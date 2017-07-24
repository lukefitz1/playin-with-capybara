Feature: Customer account login

Background: 
	Given Customer is on the account login page
	And The following customers
	| username 						| password  | group		|
	| luke.fitzgerald@blueacorn.com | pass4luke | general	|
	| lukefitz1@gmail.com 			| pass4luke | retailer	|

	Scenario: Customer logs in with username and password
	When customer logs in with their username and password
	Then customer is taken to account dashboard page