class ProductPage
	attr_reader :wishlistLink, :prodName

	def initialize
		@wishlistLink = "Add to Wishlist"
		@prodName = "#product_addtocart_form > div.product-shop > div.product-name > span"
	end

end