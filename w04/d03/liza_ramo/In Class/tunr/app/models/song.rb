class Song < ActiveRecord::Base
  belongs_to :artist
  has_and_belongs_to_many :playlists

  # * `title`, 'artist_id' and 'price; must be present:
  validates :title, :artist_id, :price, presence: true

  # * `price` must be an integer
  validates :price, numericality: { only_integer: true }
  validates :price, numericality: true 

  # * `price` must be greater than 0
  validates :price, numericality: { greater_than: 0 }

end
