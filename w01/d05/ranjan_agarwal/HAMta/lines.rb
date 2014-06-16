require 'pry'
class Lines
  attr_reader(:train_name, :list_of_stations)
  def initialize(name, list_of_stations)
    @train_name = train_name
    @list_of_stations = list_of_stations
  end

  def list_stations
    station_info = stations.map { |station| station.line_info }
    station_info.join("\n")
  end
end
