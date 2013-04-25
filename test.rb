class Parent

	def initialize
		@test = 1

	end
	def do
		@test
	end
end

class Child < Parent

	def initialize
		@test = 2
	end
	def do
		super()
	end
end


p = Parent.new
puts p.do

c = Child.new
puts c.do