class GroupbUser < ActiveRecord::Base
  belongs_to :groupb
  belongs_to :user
  
  def grpb_user_name
      user.try(:name)
  end

  def grpb_user_name=(name)
      obj_user = User.find_or_initialize_by_name(name) if name.present?
      self.user = if obj_user.new_record?
        obj_user.email = name+"@test.com" if obj_user.email.blank?
        obj_user.save(:validate=>false)
        obj_user
      else
        obj_user
      end
  end
end
