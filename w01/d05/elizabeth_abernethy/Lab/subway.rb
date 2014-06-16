# require 'pry'

class Subway

  attr_reader(:name, :all_lines)

  def initialize(name, all_lines)
    @name = name
    @all_lines = all_lines
  end

  def subway_name
    return "Welcome to the #{name}!"
  end

  def list_all_lines
    line_info = all_lines.map { |lines| lines.list_info }
    line_info.join("\n")
  end

  def calculate_full_trip(HAMta, line_on, station_on, line_off, station_off)
    if line_on == line_off
      return ([HAMta[line_on].index(station_on) - HAMta[line_on].index(station_off)).abs
    else
      first_trip = (HAMta[line_on].index(station_on) - HAMta[line_on].index('Union Square')).abs
      second_trip = (HAMta[line_off].index(station_off) - HAMta[line_off].index('Union Square')).abs
      return (first_trip + second_trip)
  end

end
