class Player < ActiveRecord::Base
  belongs_to :team

  validates :name, :photo_url, :position, :skill_level, presence: true
  validates :skill_level, numericality: { only_integer: true}
  validates :name, :photo_url, uniqueness: true
end
