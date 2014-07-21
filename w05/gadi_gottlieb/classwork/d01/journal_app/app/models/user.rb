class User < ActiveRecord::Base
  has_secure_password 

  validates_presence_of :username, :first_name
  validates_uniqueness_of :username
end
