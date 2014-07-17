class Song < ActiveRecord::Base
  belongs_to :artist
  has_and_belongs_to_many :playlists

  validates :title, :artist_id, :price, presence: true

  validates :title, uniqueness: true

  validates :price, numericality: true

  validates :price, numericality: {greater_than: 0 }

end
