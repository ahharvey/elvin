class Order < ActiveRecord::Base
  has_many :ordered_products
  accepts_nested_attributes_for :ordered_products, 
    :reject_if => proc {|attrs| attrs[:product_name].blank?},
    :allow_destroy => true

  before_save :recalculate_product_stock

  private
  
  def recalculate_product_stock
    if fulfilled?
      if fulfilled_changed?
        ordered_products.each do |op|
          op.product.increment!(:quantity, op.quantity)
        end
      else
        ordered_products.each do |op|
          op.quantity_changed? ? op.product.increment!(:quantity, op.quantity - op.quantity_was) : ""
        end
      end
    end
  end
  
end
