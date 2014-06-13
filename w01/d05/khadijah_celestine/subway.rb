# subway.rb
# June 13
# Khadijah

require './line'
require './station'

class Subway

	attr_reader(:name, :lines)

	def initialize(name, lines)
		@name = name
		@lines = lines
	end

	def distance(line_on, line_off, station_on, station_off)
    on_index = station_index(line_on, station_on)
    off_index = station_index(line_on, station_off)
    return (off_index - on_index).abs
  end

  def station_index(line_name, station_name)
    return line_name.index { |station| station.name == station_name }
  end
end

