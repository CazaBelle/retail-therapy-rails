class Product < ApplicationRecord
  validates_presence_of :name, :category, :price, :quantity
end
