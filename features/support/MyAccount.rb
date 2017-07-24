#!/usr/bin/ruby
# @Author: Luke
# @Date:   2017-07-23 21:43:38
# @Last Modified by:   Luke
# @Last Modified time: 2017-07-23 22:32:27

class MyAccount
	attr_reader :un, :pw, :submit, :dash, :prodNameInWishlist, :wishlistSuccessMessage

	def initialize
		@un = "login[username]"
		@pw = "login[password]"
		@submit = "send2"
		@dash = "body > div.wrapper > div > div.main-container.col2-left-layout > div > div.col-main > div > div"
		@prodNameInWishlist = "#item_2 > td.wishlist-cell1.customer-wishlist-item-info > h3 > a"
		@wishlistSuccessMessage = "body > div.wrapper > div > div.main-container.col2-left-layout > div > div.col-main > div > div.my-wishlist > ul > li > ul > li > span"
	end

	def login(username, pass)
		Capybara.fill_in @un, with: username
		Capybara.fill_in @pw, with: pass
		Capybara.find_button(@submit).click
		Capybara.has_text?('MY DASHBOARD')
	end

end