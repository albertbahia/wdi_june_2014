class Actor < ActiveRecord::Base
	has_and_belongs_to_many :movies
	# photo_url should be validated but none present in omdbapi search
	validates_presence_of :name
end