product = ProductPage.new

When(/^User adds product to cart with a qty of (\d+)$/) do |arg1|
	Capybara.has_css?(product.addToCartBtn)
	click_button(product.addToCartBtn)
	sleep(5)  
end

Then(/^User is directed to cart page$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^Product is displayed in cart$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^User attempts to add product to cart$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^Add to cart button is not displayed$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^Back in stock alert form is displayed$/) do
  pending # Write code here that turns the phrase above into concrete actions
end