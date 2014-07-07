class Player < ActiveRecord::Base
  belongs_to :teams

  # Player must have a name, position and skill level
  validates_presence_of :name, :position, :skill_level

  # Player must have an integer-based skill less than 100
  validates :skill_level, { numericality: { only_integer: { maximum: 100 } }}

  # Player must have an integer-based skill greater than 0
  validates :skill_level, { numericality: { minimum: 0 } }

end
