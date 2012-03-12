class Product < ActiveRecord::Base
  has_many :ordered_products
  
  validates_presence_of :price
end
