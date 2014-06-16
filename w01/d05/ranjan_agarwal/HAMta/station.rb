require 'pry'
class Station
  attr_reader(:station_name, :workers, :wheelchair,:wait)
  def initialize(station_name,workers,wheelchair,wait)
    @station_name = station_name
    @workers = workers
    @wheelchair = wheelchair
    @wait = wait
  end
end

def all_stations(list_of_stations)
  list_of_stations.each do |station|
    puts "=" * 50
    puts ("The station name is: #{station.station_name}")
    puts ("Is there wheelchair access in this station? #{station.wheelchair}")
    puts ("Your average wait time at this station #{station.wait}")
    puts "=" * 50
  end
end
