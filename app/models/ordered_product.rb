class OrderedProduct < ActiveRecord::Base
  belongs_to :product
  belongs_to :order
  has_many :colors
  
  accepts_nested_attributes_for :colors, 
    :reject_if => proc {|attrs| attrs[:product_name].blank?},
    :allow_destroy => true
	                              
	                             
  def product_name
    product.try(:name)
  end

  def product_name=(name)
    obj_product = Product.find_or_initialize_by_name(name) if name.present?
    self.product = if obj_product.new_record?
      obj_product.save(validate: false)
      obj_product
    else
      obj_product
    end
  end

  def initialize(*attributes)
    super
    2.times { colors.build }
  end
  
  private
  def decrement_product_stock
    if self.order.fullfilled?
      self.product.decrement!(:stock, self.quantity )
    end
  end

  def increment_product_stock
    if self.order.fullfilled?
      self.product.increment!(:stock, self.quantity )
    end
  end
end
