class Song < ActiveRecord::Base
  belongs_to :artist
  has_and_belongs_to_many :playlists

  # * `title` must be present
  # * `artist_id` must be present
  # * `price` must be present
  validates :title, :artist_id, :price, presence: true

  # * `price` must be a number
  validates :price, numericality: true

  # * `price` must be greater than 0
  validates :price, { numericality: {greater_than: 0} }

  # * `price` must be an integer
  validates :price, {numericality: {only_integer: true} }
  
end

