class Player < ActiveRecord::Base
  belongs_to :team
  validates_presence_of :name, :photo_url, :position, :skill_level, :team_id
  validates_uniqueness_of :name
  validates :skill_level, numericality: {only_integer: true}
end
