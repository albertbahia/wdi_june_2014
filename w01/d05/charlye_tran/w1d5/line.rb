require 'pry'

class Line
  attr_reader(:line_name, :stations)

  def initialize(name, list_of_stations)
    @line_name = line_name
    @list_of_stations = list_of_stations
  end

  def line_info
    info_line = "Line name: #{line_name}. "
    info_line += "Stations are: #{list_of_stations.join(' and ')}"
  end

  #once user passes in station, check station against array
  #then return the index location for that station.
  def station_index(station)
    if station.name == station
      return list_of_stations.index(station.name)
    end
  end

  def calculate(station_on, station_off)
    index_on = station_index(station_on)
    index_off = station_index(station_off)
    stops = (index_off - index_on).abs
  end

end

binding.pry
