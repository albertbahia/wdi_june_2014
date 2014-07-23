class Player < ActiveRecord::Base
  has_many :players
  belongs_to :team

  validates :name, :photo_url, :position, :skill_level, presence: true
  validates :name, uniqueness: true
end
