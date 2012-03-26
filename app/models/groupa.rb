class Groupa < ActiveRecord::Base
  belongs_to :order
  
  has_many :groupa_users
  
  accepts_nested_attributes_for :groupa_users, 
                                :reject_if => proc {|attrs| attrs[:user_name].blank?},
                                :allow_destroy => true
                                
  def initialize(*attributes)
    super
    2.times { groupa_users.build }
  end
end
