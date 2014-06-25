#require 'pry'
#require_relative './station.rb'

class Line

  attr_reader(:name, :stations)

  def initialize(name, stations)
    @name = name
    @stations = stations
  end

  def list_name
    return "The #{name} Line"
  end

  def list_stations
    station_info = stations.map {|station| station.list_info}
    station_info.join(" ")
  end

end


#binding.pry
