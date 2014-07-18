class Player < ActiveRecord::Base
  belongs_to :team

  validates_presence_of :name, :photo_url, :position, :skill_level
  validates_uniqueness_of :name
end
