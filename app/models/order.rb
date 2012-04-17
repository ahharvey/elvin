class Order < ActiveRecord::Base
  has_many :ordered_products
  has_many :groupas
  has_many :groupbs
  has_many :groupcs
  belongs_to :user
  accepts_nested_attributes_for :ordered_products, 
                                :reject_if => proc {|attrs| attrs[:product_name].blank?},
                                :allow_destroy => true
    
  accepts_nested_attributes_for :groupas, 
                                :reject_if => proc {|attrs| attrs[:name].blank?},
                                :allow_destroy => true
                                
  accepts_nested_attributes_for :groupbs, 
                                :reject_if => proc {|attrs| attrs[:name].blank?},
                                :allow_destroy => true
    
  accepts_nested_attributes_for :groupcs, 
                                :reject_if => proc {|attrs| attrs[:name].blank?},
                                :allow_destroy => true

  before_save :recalculate_product_stock

  def or_user_name
      user.try(:name)
  end

  def or_user_name=(name)
      obj_user = User.find_or_initialize_by_name(name) if name.present?
      self.user = if obj_user.new_record?
        obj_user.email = name+"@test.com" if obj_user.email.blank?
        obj_user.save(:validate => false)
        obj_user
      else
        obj_user
      end
  end
  
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
