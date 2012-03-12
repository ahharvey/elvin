class Order < ActiveRecord::Base
  has_many :ordered_products
  accepts_nested_attributes_for :ordered_products, 
	                              :reject_if => proc {|attrs| attrs[:product_name].blank?},
	                              :allow_destroy => true
end
