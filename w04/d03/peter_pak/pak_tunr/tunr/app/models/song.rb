class Song < ActiveRecord::Base
  belongs_to :artist
  has_and_belongs_to_many :playlists
  #
  validates :title, :artist_id, :price, presence: true
  validates :price, numericality: { greater_than_or_equal_to: 0 }
  validates :price, numericality: {only_integer: true}

end
