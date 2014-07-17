class Entry < ActiveRecord::Base

  has_secure_password

  validates :title, :content, presence: true


end
