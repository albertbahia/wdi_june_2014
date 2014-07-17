class Actor < ActiveRecord::Base
  has_and_belongs_to_many :movies
  has_and_belongs_to_many :trailers

  validates :name, :photo_url, presence: true
  validates :name, length: {maximum: 50}
  validates :name, uniqueness: true
end
