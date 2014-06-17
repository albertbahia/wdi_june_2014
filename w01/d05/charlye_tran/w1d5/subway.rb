#require 'pry'

class Subway
  attr_reader(:name, :list_of_lines)

  def initialize(name, list_of_lines)
    @name = name
    @list_of_lines = list_of_lines
  end

  def subway_info
    subway_info = ("Name is: #{name}. ")
    subway_info += ("Lines on the #{name} are: #{list_of_lines.join(' and ')}")
  end

  def distance(line_on_stops, line_off_stops)
    total_stops = line_on_stops + line_off_stops
    returns total_stops
  end
end

MTA = Subway.new("MTA", ["L", "N", "S"])

#binding.pry
