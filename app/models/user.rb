class User < ActiveRecord::Base
  attr_accessible :login_name, :name, :password, :password_confirmation, :user_type

  has_secure_password
  #user_type: 1 => admin
end
