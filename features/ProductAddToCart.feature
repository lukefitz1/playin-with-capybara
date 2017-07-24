Feature: Product add to cart

Background:
	Given Guest user is on product page

	Scenario: Product is in stock
	When User adds product to cart with a qty of 1
	Then User is directed to cart page
	And Product is displayed in cart

	Scenario: Product is not in stock
	When User attempts to add product to cart
	Then Add to cart button is not displayed
	And Back in stock alert form is displayed