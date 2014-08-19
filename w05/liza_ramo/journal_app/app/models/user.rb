class User < ActiveRecord::Base
  has_secure_password
  has_many :entries

  validates :username, :first_name, presence: true
  validates :username, uniqueness: true

end
