class User < ActiveRecord::Base
  has_secure_password
  has_many :entries, dependent: :destroy

  validates_presence_of :username, :first_name
  validates :username, uniqueness: true
end
