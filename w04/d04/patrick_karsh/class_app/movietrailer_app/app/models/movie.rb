class Movie < ActiveRecord::Base 
	
	has_many_belongs_to_many :actors 
	has_many :trailers, dependent: :destroy 
	validates :title, :year, presence: true
	validates :title, uniqueness: true 
	validates :year, numericality: {only_integer: true}
	
	
end