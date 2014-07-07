class Player < ActiveRecord::Base
  belongs_to :team

  validates_presence_of :name, :photo_url, :position, :skill_level

  validates :skill_level, numericality: { :greater_than => 0, :less_than_or_equal_to => 100 }

  validates :position, inclusion: { in: [ "forward", "defender", "midfielder", "goalkeeper" ] }


end
