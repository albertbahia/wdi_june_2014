require 'pry'
require_relative './station.rb'

class Line

	attr_reader(:name, :stations_list)

	def initialize(initial_name, initial_stations_list)
		@name = initial_name
		@stations_list = initial_stations_list
	end


	def line_name
		return "The #{name} Train"
	end


	def list_stations
		stations_info = stations_list.map { |station| station.list_info }
		# Use { } for shorter actions.
		# list_info method above is from class Station.
		stations_info.join("\n")
	end

	def calculate_trip(station_on, station_off)
		on_index = stations_list.index { |station| station.name == station_on }
		off_index = stations_list.index { |station| station.name == station_off }
		return (off_index - on_index).abs
	end

	def station_index(station_name)
		return stations_list.index { |station| station.name == station_name }
	end


end

# l = Line.new("L", [station_1, station_2, station_3, station_4, station_5])
# binding.pry
