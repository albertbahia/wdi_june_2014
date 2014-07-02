class Song < ActiveRecord::Base
  belongs_to :artist
  has_and_belongs_to_many :playlists

  validates :price,
            length: { minimum: 1, maximum: 50 },
            numericality: {only_integer: true, greater_than: 0}
  validates :title, artist_id: true
end
