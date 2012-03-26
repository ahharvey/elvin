class Groupb < ActiveRecord::Base
  belongs_to :order
  
  has_many :groupb_users
  
  accepts_nested_attributes_for :groupb_users, 
                                :reject_if => proc {|attrs| attrs[:user_name].blank?},
                                :allow_destroy => true
                                
                               
  def initialize(*attributes)
    super
    2.times { groupb_users.build }
  end
end
