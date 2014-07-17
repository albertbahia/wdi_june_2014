class TeamGroup < ActiveRecord::Base
	belongs_to :team
	belongs_to :group	
end