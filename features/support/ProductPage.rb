class ProductPage
	attr_reader :wishlistLink, :prodName, :addToCartBtn

	def initialize
		@wishlistLink = "Add to Wishlist"
		@prodName = "#product_addtocart_form > div.product-shop > div.product-name > span"
		@addToCartBtn = "#product_addtocart_form > div.add-to-cart-wrapper > div > div > div.add-to-cart-buttons > button"
	end

end