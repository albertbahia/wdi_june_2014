class Player < ActiveRecord::Base
  belongs_to :team

  validates :name, presence: true
  validates :skill_level, numericality: { only_integer: true}
end
