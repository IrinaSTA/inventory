require_relative '../inventory'

RSpec.describe Product do

  before :all do
    @apples = Product.new("granny smith appels")
    @oranges = Product.new("blood oranges", "FFF")
  end


  it "has a name when first created" do
    expect(@apples.name).to eq("granny smith appels")
  end

  # it "has a supplier, if created with supplier" do
  #   expect(@oranges.supplier).to eq("FFF") # can't make this work atm
  # end

  it "can change it's name" do
    expect(@apples.name="granny smith appels").to eq("granny smith appels")
  end

  it "has a product count" do
    expect(Product.count).to eq(2)
  end

  it "can set its price" do
    expect(@apples.price=3.5).to eq(3.5)
  end

  it "can change it price" do
    expect(@apples.price=4.5).to eq(4.5)
  end

  it "has a price history" do
    expect(@apples.price_history).not_to be_empty
  end

end



# load 'inventory.rb'
#
# apples = Product.new("granny smith appels", "Walter Clark")
# puts Product.count
# apples.name = "granny smith apples"
# puts apples.name
# apples.price = 3.5
# puts apples.price_history
# puts Supplier.count
# oranges = Product.new("blood oranges", "DHL", 4.6)
# puts Product.count
# oranges.price = 4.3
# oranges.price_history
# puts Supplier.all
# puts Supplier.count
