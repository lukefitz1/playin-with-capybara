#!/usr/bin/ruby
# @Author: Luke
# @Date:   2017-07-23 21:43:38
# @Last Modified by:   Luke
# @Last Modified time: 2017-07-24 07:27:05

class MyAccount
	attr_reader :un, :pw, :submit, :dash, :prodNameInWishlist, :wishlistSuccessMessage, :wishlistHeading, :accountLoginHeading, :dashboardHeading

	def initialize
		@un = "login[username]"
		@pw = "login[password]"
		@submit = "send2"
		@dash = "body > div.wrapper > div > div.main-container.col2-left-layout > div > div.col-main > div > div"
		@prodNameInWishlist = "#item_2 > td.wishlist-cell1.customer-wishlist-item-info > h3 > a"
		@wishlistSuccessMessage = "body > div.wrapper > div > div.main-container.col2-left-layout > div > div.col-main > div > div.my-wishlist > ul > li > ul > li > span"
		@wishlistHeading = "body > div.wrapper > div > div.main-container.col2-left-layout > div > div.col-main > div > div.my-wishlist > div > h1"
		@accountLoginHeading = "#login-form > div > div.col-2.registered-users > div.content.fieldset > h2"
		@dashboardHeading = 'body > div.wrapper > div > div.main-container.col2-left-layout > div > div.col-main > div > div > div.page-title > h1'
	end

	def login(username, pass)
		Capybara.fill_in @un, with: username
		Capybara.fill_in @pw, with: pass
		Capybara.find_button(@submit).click
	end

end