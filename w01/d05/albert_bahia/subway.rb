require 'pry'
require_relative './line.rb'
require_relative './station.rb'

class Subway

  attr_reader(:name, :trains, :trip_length)

  def initialize(subway_name, trains_list, trip_length)
    puts("Subway created.")
    @name = subway_name
    @trains = trains_list
    @trip_length = trip_length
  end

  # def calculate_length(line_on, station_on, line_off, station_off)
  #
  #
  #
  #   return length
  # end



end
