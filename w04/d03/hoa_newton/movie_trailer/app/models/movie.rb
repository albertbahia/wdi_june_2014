class Movie < ActiveRecord::Base
	
	has_many :trailers, dependent: :destroy
	has_and_belongs_to_many :actors

	validates :title, :year, presence: true
	validates :title, uniqueness: true
	validates :year, numericality: {only_integer: true}
end
