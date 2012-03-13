class Product < ActiveRecord::Base
  has_many :ordered_products
  
  validates_presence_of :price

  def self.save_new_product(products)
    obj = find(products.keys)
    products.each do |product|
      obj_product = obj.find{|o|o.id.eql?(product.first.to_i)}
      obj_product.update_attributes({quantity: product.last["quantity"], price: product.last["price"]})
    end
  end
end
