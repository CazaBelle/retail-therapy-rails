require 'rails_helper'

RSpec.describe Product, type: :model do 

  subject(:product) { described_class.new(name: "TestProduct", category: "TestCat", price: 50, quantity: 5) }

  it "is valid with valid attributes" do 
    expect(product).to be_valid
  end 

  it "is it not valid without a name" do 
    product.name = nil
    expect(product).not_to be_valid
  end 

  it "is not valid witout a category" do 
    product.category = nil
    expect(product).not_to be_valid
  end

  it "is not valid without an price" do 
    product.price = nil 
    expect(product).not_to be_valid
  end 

  it "is not valid without a quantity" do 
    product.quantity = nil 
    expect(product).not_to be_valid
  end 
  
end 