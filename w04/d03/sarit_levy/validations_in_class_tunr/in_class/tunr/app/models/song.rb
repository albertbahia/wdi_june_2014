class Song < ActiveRecord::Base
  belongs_to :artist
  has_and_belongs_to_many :playlists


  # Songs should have a title, artist_id and price
  validates :title, :artist_id, :price, presence: true

  # Price must be a number
  validates :price, numericality: { only_integer: true }

  #Price must be a number greater than 0
  validates :price, numericality: { greater_than: 0, true}



  

end
