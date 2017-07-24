#!/usr/bin/ruby
# @Author: Luke
# @Date:   2017-07-23 20:40:31
# @Last Modified by:   Luke
# @Last Modified time: 2017-07-24 06:55:43

product = ProductPage.new
account = MyAccount.new
@prodName = ""

Given(/^Logged in user is on product page$/) do
  # log in as customer first
  visit("http://mage.dev/customer/account/login")
  account.login("luke.fitzgerald@blueacorn.com", "pass4luke")
  Capybara.has_text?('MY DASHBOARD')

  # navigate to product page
  visit("http://mage.dev/batest-simple")
end

When(/^Customer adds product to wishlist$/) do
  @prodName = Capybara.find(product.prodName).text
  find_link(product.wishlistLink).visible?
  click_link(product.wishlistLink)
end

Then(/^Product is added to wishlist$/) do
  # verify product added to wishlist
  Capybara.has_text?(@prodName)
end

Then(/^Customer is redirected to wishlist page$/) do
  Capybara.has_css?(account.wishlistHeading)
  expect(page).to have_current_path("/index.php/wishlist/index/index/wishlist_id/1/")
end

Given(/^Guest user is on product page$/) do
  # navigate to product page
  visit("http://mage.dev/batest-simple")
end

When(/^Logs in at the login page$/) do
  # wait for page title to display
  Capybara.has_css?(account.accountLoginHeading)
  
  #login to customer account
  account.login("luke.fitzgerald@blueacorn.com", "pass4luke")
  Capybara.has_text?('My Wishlist')
end