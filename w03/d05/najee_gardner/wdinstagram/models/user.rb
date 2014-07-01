class User < ActiveRecord::Base
  has_many :posts

  def verify_password(attempt)
    password == attempt
  end
end
