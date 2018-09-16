load 'inventory.rb'

apples = Product.new("granny smith appels", "Walter Clark")
puts Product.count
apples.name = "granny smith apples"
puts apples.name
apples.price = 3.5
puts apples.price_history
puts Supplier.count
oranges = Product.new("blood oranges", "DHL", 4.6)
puts Product.count
oranges.price = 4.3
oranges.price_history
puts Supplier.all
puts Supplier.count
