# line.rb
# June 13
# Khadijah

require 'pry'

class Line

	attr_reader(:name, :stations)

	def initialize(name, stations)
		@name = name
		@stations = stations
	end

	def distance(station1, station2)
		stations.index(station1) - stations.index(station2)
		return distance.abs
	end
end

binding.pry
