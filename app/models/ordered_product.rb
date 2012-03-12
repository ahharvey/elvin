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
      self.product = Product.find_or_create_by_name(name) if name.present?
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
    
    def recalculate_product_stock
      if self.order.fullfilled?
        if self.order.fullfilled_changed?
          self.product.increment!(:stock, self.quantity) 
        else
          self.quantity_changed? ? self.product.increment!(:stock, self.quantity - self.quantity_was) : ""
        end
      end
    end
end
