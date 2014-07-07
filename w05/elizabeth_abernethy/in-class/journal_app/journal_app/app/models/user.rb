class User < ActiveRecord::Base
  has_secure_password

  validates_presence_of :username, :first_name
  validates :username, uniqueness: true
end
