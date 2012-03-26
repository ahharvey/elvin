class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  has_many :orders
  
  def self.save_new_user(users)
    obj = find(users.keys)
    users.each do |user|
      obj_user = obj.find{|o|o.id.eql?(user.first.to_i)}
      obj_user.update_attributes({:email => user.last["email"], :password => user.last["password"]})
    end
  end
end
