class Player < ActiveRecord::Base
  belongs_to :teams
  validates :name, :photo_url, :position, :skill_level, presence: true
  validates :skill_level, numericality: { only_integer: true }, :inclusion => 0..100
end
