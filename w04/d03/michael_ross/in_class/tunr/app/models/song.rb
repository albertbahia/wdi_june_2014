class Song < ActiveRecord::Base
  belongs_to :artist
  has_and_belongs_to_many :playlists

  validates :title, :artist_id, :price, { presence: true }
  validates :price, numericality: { only_integer: true, greater_than: 0 }
  

end
