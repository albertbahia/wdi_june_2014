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


	def distance(station_on, station_off)
    on_index = station_index(station_on)
    off_index = station_index(station_off)
    return (off_index - on_index).abs
  end
 
  def station_index(station_name)
    return stations.index { |station| station.name == station_name }
  end

	def to_s
		return "#{name} \n #{stations}"
	end
end


binding.pry
