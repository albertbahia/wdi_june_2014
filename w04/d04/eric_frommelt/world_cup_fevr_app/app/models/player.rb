class Player < ActiveRecord::Base
  belongs_to :team
  validates_presence_of :name
  validates_presence_of :photo_url
  validates_presence_of :position, inclusion: { in: %w(Forward Defender Midfielder Goalkeeper), message: "%{value} is not a valid position" }
  validates_presence_of :skill_level, inclusion: { in: %w(1...100), message: "%{value} is not a valid skill level" }
end
