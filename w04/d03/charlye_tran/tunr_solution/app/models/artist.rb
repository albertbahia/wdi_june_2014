class Artist < ActiveRecord::Base
  has_many :songs, dependent: :destroy

  #Artists should have a name and nationality
  validates :name, :nationality, presence: true
  #No 2 artists should have the same name
  validates :name, uniqueness: true
  #Artist name should not exceed 50 characters
  validates :name, length: {maximum: 50}
  
end
