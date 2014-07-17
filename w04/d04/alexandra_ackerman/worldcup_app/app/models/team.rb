class Team < ActiveRecord::Base
	has_many :players
	belongs_to :group

	validates_presence_of :country
	validates_uniqueness_of :country
	validates_presence_of :flag_url
	validates_presence_of :manager_name
end