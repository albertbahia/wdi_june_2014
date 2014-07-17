class Song < ActiveRecord::Base
  belongs_to :artist
  has_and_belongs_to_many :playlists

  validates :title, presence: true
  validates :artist_id, presence: true
  validates :price, presence: true
  # validates :price, numericality:, {only_integer: true}
  # validates :price, numericality:, {greater_than: 0}
end
