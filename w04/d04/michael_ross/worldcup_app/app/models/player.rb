class Player < ActiveRecord::Base
  belongs_to :team

  validates :name, :position, :skill_level, presence: true
  validates :skill_level, numericality: { only_integer: true }
  validates_inclusion_of :skill_level, :in => 1..100
  validates :position, inclusion: { in: %w(Forward Defender Midfielder Goalkeeper) }
end
