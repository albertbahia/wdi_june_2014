# require 'pry'

class Line

  attr_reader(:name, :station_list)

  def initialize(name, station_list)
    @name = name
    @station_list = station_list
  end

  def list_stations
    station_info = stations.map { |station| station.list_info }
    station_info.join("\n")
  end

  def line_name
    return "The #{name} Train"
  end

  def calculate_trip(station_on, station_off)
    on_index = station_index(station_on)
    off_index = station_index(station_off)
    return (off_index - on_index).abs
  end

end

# binding.pry
