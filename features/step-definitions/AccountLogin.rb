#!/usr/bin/ruby
# @Author: Luke
# @Date:   2017-07-24 07:04:59
# @Last Modified by:   Luke
# @Last Modified time: 2017-07-24 07:26:30

account = MyAccount.new
@customerTable = Hash.new

Given(/^Customer is on the account login page$/) do
  visit("http://mage.dev/customer/account/login")

  # wait for page title to display
  Capybara.has_css?(account.accountLoginHeading)
end

Given(/^The following customers$/) do |table|
  # table is a Cucumber::MultilineArgument::DataTable
  # puts table.raw
  # puts table.hashes

  @customerTable = table.hashes

end

When(/^customer logs in with their username and password$/) do

  @customerTable.each do |row|
  	account.login(row['username'], row['password'])
  	Capybara.has_text?('MY DASHBOARD')
  end

end

Then(/^customer is taken to account dashboard page$/) do
  Capybara.has_css?(account.dashboardHeading)
  expect(page).to have_current_path("/index.php/customer/account/")
end