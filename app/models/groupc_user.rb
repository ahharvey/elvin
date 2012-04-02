class GroupcUser < ActiveRecord::Base
  belongs_to :groupc
  belongs_to :user
  
  def grpc_user_name
      user.try(:name)
  end

  def grpc_user_name=(name)
      obj_user = User.find_or_initialize_by_name(name) if name.present?
      self.user = if obj_user.new_record?
        obj_user.email = name+"@test.com"
        obj_user.save(:validate=>false)
        obj_user
      else
        obj_user
      end
  end
end
