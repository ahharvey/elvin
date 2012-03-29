class Groupc < ActiveRecord::Base
  belongs_to :order
  
  has_many :groupc_users
  
  accepts_nested_attributes_for :groupc_users, 
                                :reject_if => proc {|attrs| attrs[:grpc_user_name].blank?},
                                :allow_destroy => true
                           
  def initialize(*attributes)
    super
    2.times { groupc_users.build }
  end
end
