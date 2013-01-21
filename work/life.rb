
class ShoppingCart
	
	def initialize
		@items = []
	end

	def add_to_cart(product)
		@items << product
	end

	def count_items
		return @items.count
	end

	def show_items
		result = ""
		@items.each do |item|
			result += " " + item.name
		end
		return result
	end
end

class Product
	attr_accessor :name
	def initialize(name)
		@name = name
	end
end



# setup products
p1 = Product.new('snickers')
p2 = Product.new('reeses')

# create cart
c = ShoppingCart.new
c.add_to_cart(p1)
c.add_to_cart(p2)

puts c.count_items
puts c.show_items

#sputs p1.name