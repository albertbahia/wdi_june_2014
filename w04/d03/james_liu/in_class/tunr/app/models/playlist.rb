class Playlist < ActiveRecord::Base
  has_and_belongs_to_many :songs

  # * Presence of name
  validates :name, presence: true

  # * Uniqueness of name
  validates :name, uniqueness: true

end

