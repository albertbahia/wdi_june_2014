class Player < ActiveRecord::Base
  belongs_to :team
  validates_presence_of :name, :photo_url, :position, :skill_level
  validates_numericality_of :skill_level, less_than_or_equal_to: 100
  validates_numericality_of :skill_level, greater_than_or_equal_to: 1
end