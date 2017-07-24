#!/usr/bin/ruby
# @Author: Luke
# @Date:   2017-07-23 20:40:31
# @Last Modified by:   Luke
# @Last Modified time: 2017-07-23 22:31:29

product = ProductPage.new
account = MyAccount.new
@prodName = ""

Given(/^Logged in user is on product page$/) do
  # log in as customer first
  visit("http://mage.dev/customer/account/login")
  account.login("luke.fitzgerald@blueacorn.com", "pass4luke")

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


  sleep(5)
end

Then(/^Customer is redirected to wishlist page$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Given(/^Guest user is on product page$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^User adds product to wishlist$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^logs in at the login page$/) do
  pending # Write code here that turns the phrase above into concrete actions
end