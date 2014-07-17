class Team < ActiveRecord::Base
	belongs_to :group
	has_many :players

	validates :country, uniqueness: true
	validates :country, :flag_url, presence: true
end