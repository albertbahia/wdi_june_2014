require 'pry'
require_relative 'station.rb'
require_relative 'line.rb'

class Subway
  attr_reader(:name)

  def initialize(name, train_lines)
    @name = name
    @train_lines = train_lines
  end

  def list_lines
    line_list = train_lines.map { |line| "The (#{line.name.capitalize}) Train" }
    line_list.join("\n")
  end

  def list_stations_of(line_name)
    get_line(line_name).list_stations
  end

  def trip_stops(line_on, station_on, line_off, station_off)
    if line_on != line_off
      trip1 = get_line(line_on).distance(station_on)
      trip2 = get_line(line_off).distance(station_off)
      trip1 + trip2
    else
      get_line(line_on).distance(station_on, station_off)
    end

  end

  private

  attr_reader(:train_lines)

  def get_line(line_name)
    (train_lines.select { |line| line.name == line_name })[0]
  end

end
