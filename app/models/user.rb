class User < ActiveRecord::Base
  devise :database_authenticatable
  has_secure_password

end
