require 'time'

class Product

  @@count = 0
  @@instances = []

  def initialize(name, *supplier)
    @name = name
    @price_history = {}
    @supplier ||= Supplier.new(supplier) # This needs improving. Switch to symbols for supplier names? How do I not create duplicates?
    @@count += 1 #What happens if I delete a product? I want count to reflect that
    @@instances << self
  end

  attr_accessor :price, :supplier, :name
  attr_reader :price_history

  def price=(price)
    @price = price
    @price_history[Time.now] = price
  end

  # Include method to list all products (and suppliers) in easy to read format
  def self.all
    @@instances.inspect
  end

  def self.count
    @@count
  end

end

class Supplier

  @@count = 0
  @@instances = []

  def initialize(name)
    @name = name
    @@count += 1
    @@instances << self
  end

  attr_accessor :name

  def self.all
    @@instances.inspect
  end

  def self.count
    @@count
  end
  
end

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
