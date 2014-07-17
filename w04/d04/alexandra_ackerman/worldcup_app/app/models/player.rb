class Player <ActiveRecord::Base
	belongs_to :team

	validates_presence_of :name
	validates_uniqueness_of :name
	validates_presence_of :photo_url
	validates_presence_of :position
	validates_presence_of :skill_level
	validates :skill_level, numericality: { less_than: 101 }
	validates :skill_level, numericality: { greater_than_or_equal_to: 0 }
end