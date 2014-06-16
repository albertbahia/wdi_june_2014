class Line

  attr_reader :name, :stations

  def initialize(name, stations)
    @name = name
    @stations = stations
  end

  def line_name
    return "The #{name} Train"
  end

  def list_stations
    station_info = stations.map { |station| station.display_station_info }
  end

  def single_line_distance(station_on, station_off)
    return (station_index(station_on) - station_index(station_off)).abs
  end

  def station_index(station_name)
    return stations.index { |station| station.name == station_name }
  end



  # def calculate_distance(line1_station_on, line1_station_off, line2_station_on, line2_station_off)
  #   (line1_station_on.index - line1_station_off.index).abs +
  #   (line2_station_on.index - line2_station_off.index).abs
  # end

end


#Stations will be an array
