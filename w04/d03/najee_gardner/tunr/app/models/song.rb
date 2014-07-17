class Song < ActiveRecord::Base
  belongs_to :artist
  has_and_belongs_to_many :playlists

  validates :title, :album, :price, :artist_id, presence: true
  validates :price, numericality: {greater_than: 0}

end
