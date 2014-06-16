require 'pry'
require_relative 'station.rb'

class Line
  attr_reader(:name)

  def initialize(name, stations)
    @name = name
    @stations = stations
  end

  # displays distance between two stops
  # does distance to US if one argument passed
  def distance(station_name1, station_name2 = "Union Square")
    (station_index(station_name1) - station_index(station_name2)).abs
  end

  def list_stations
    (stations.map { |station| station.display_info }).join("\n")
  end

  private

  attr_reader(:stations)

  def station_index(station_name)
      stations.index { |station| station.name == station_name }
  end
end
