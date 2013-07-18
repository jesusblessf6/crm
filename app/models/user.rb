class User < ActiveRecord::Base
  attr_accessible :login_name, :name, :password, :password_confirmation

  has_secure_password
end
