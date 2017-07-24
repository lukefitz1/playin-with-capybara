Feature: Product wishlist

	Scenario: Customer adds product to wishlist
	Given Logged in user is on product page
	When Customer adds product to wishlist
	Then Product is added to wishlist
	And Customer is redirected to wishlist page

	Scenario: Guest user adds product to wishlist
	Given Guest user is on product page
	When Customer adds product to wishlist
	And Logs in at the login page
	Then Product is added to wishlist