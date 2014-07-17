class Artist < ActiveRecord::Base
  has_many :songs
  validates(:name, {presence: true})
  validates(:name, {uniqueness: true})
  validates(:name, {length: {maximum: 50}})

  validates(:nationality, {presence: true})
  validates(:photo_url, {presence: true})
end
