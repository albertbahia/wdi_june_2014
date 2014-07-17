class Actor < ActiveRecord::Base
	has_and_belongs_to_many :movies

	validates_presence_of :name
	validates_uniqueness_of :name
	validates_presence_of :photo_url

end