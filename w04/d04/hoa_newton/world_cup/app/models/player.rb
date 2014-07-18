class Player < ActiveRecord::Base
	belongs_to :team

	validates :name, :photo_url, :position, presence: true
	validates :name, uniqueness: true
	validates :skill_level, numericality: {only_integer: true, greater_than: 0, less_than: 101}
end