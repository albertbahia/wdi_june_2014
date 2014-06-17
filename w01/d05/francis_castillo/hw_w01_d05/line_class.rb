#require 'pry'
class Line

  attr_reader(:name, :stations)
  def initialize(name, stations)
    @name = name
    @stations = stations
  end
  #Getter methods defined by ruby commented out to avoid rundancy
  # def name
  #   return @name
  # end
  #
  # def stations
  #   return @stations
  # end

  #method to calculate between 2 stations
  def calculate_trip(start_on, start_off)
    return (start_on - start_off).abs
  end

  def list_stations
    #stations_list = stations.each_with_index {|station, index| return "[#{index}] #{stations}"}
    stations.map {|st| "#{st}" }

    #stations.map {|st| "#{st}"}
  end

end
#binding.pry
