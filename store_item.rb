# item1 = {product: "Computer", color: "black", price: 800}
# item2 = {product: "Keyboard", color: "grey", price: 50}
# item3 = {product: "Mouse", color: "white", price: 45}

# puts "The product is a #{item1[:color]} #{item1[:product]} that costs $#{item1[:price]}."
# puts "The product is a #{item2[:color]} #{item2[:product]} that costs $#{item2[:price]}."
# puts "The product is a #{item3[:color]} #{item3[:product]} that costs $#{item3[:price]}."


# class Store
#   attr_reader :product, :color, :price
  
#   def initialize(product, color, price)
#     @product = product
#     @color = color
#     @price = price
#   end

#   def product
#     @product
#   end

#   def color
#     @color
#   end

#   def price
#     @price
#   end
  
#   def add_tax
#     @price = 1.09 * @price 
#   end
  
#   def print_info
#     puts "The product is a #{color} #{product} that costs $#{price}."
#   end

# end

# item1 = Store.new("Computer", "black", 800)
# item2 = Store.new("Keyboard", "grey", 50)
# item3 = Store.new("Mouse", "black", 45)

# item1.print_info
# p item1.product
# p item1.color
# p item1.price 

# puts "---"

# item1.add_tax
# p item1.price


class Store
  attr_reader :product, :color, :price
  
  def initialize(input_options)
    @product = input_options[:product]
    @color = input_options[:color]
    @price = input_options[:price]
  end
  
  def add_tax
    @price = 1.09 * @price 
  end
  
  def print_info
    puts "The product is a #{color} #{product} that costs $#{price}."
  end

end

item1 = Store.new({product: "Computer", color: "black", price: 800})
item2 = Store.new({product: "Keyboard", color: "grey", price: 50})
item3 = Store.new({product: "Mouse", color: "black", price: 45})

item1.print_info
p item1.product
p item1.color
p item1.price 

puts "---"

item1.add_tax
p item1.price