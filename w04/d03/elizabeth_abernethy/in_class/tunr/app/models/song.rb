class Song < ActiveRecord::Base
  belongs_to :artist
  has_and_belongs_to_many :playlists

  # Songs should have a title
  validates(:title, { presence: true })

  # Songs should have a price
  validates(:price, { presence: true })

  # Songs should have an artist_id
  validates(:artist_id, { presence: true })

  # Price must be a number / only an integer / greater than 0
  validates(:price, { numericality: { only_integer: true, greater_than: 0 } })

end
