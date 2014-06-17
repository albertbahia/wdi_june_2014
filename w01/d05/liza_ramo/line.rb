

class Line
  attr_reader( :name, :stations)

  def initialize(name, stations)
    @name = name
    @stations = stations
  end

  def line_name
    return "The #{name} Train"
  end

  def list_stations
    station_info = stations.map { |station| station.list_info }
    station_info.join("\n")
  end

  def calculate_trip(station_on, station_off)
    on_index = station_index(station_on)
    off_index = station_index(station_off)
    return (off_index - on_index).abs
  end

  def station_index(station_name)
    return stations.index { |station| station.name == station_name}
  end

end
