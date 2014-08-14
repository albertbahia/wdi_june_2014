class Song < ActiveRecord::Base
  belongs_to :artist
  has_and_belongs_to_many :playlists

  validates :title, :artist_id, :price, presence: true
  validates :price, numericality: {greater_than: 0}
  validates :price, numericality: {onlyy_integer: true}

end
