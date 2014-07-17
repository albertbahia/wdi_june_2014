class Player < ActiveRecord::Base
  belongs_to :team

  validates_presence_of :name
  validates :skill_level, numericality: {only_integer: true, greater_than: 0, less_than_or_equal_to: 100}
  validates :position, inclusion: {in: %w(Forward Defender Midfielder Goalkeeper),
    message: "%{value} is not a valid position."}
end
