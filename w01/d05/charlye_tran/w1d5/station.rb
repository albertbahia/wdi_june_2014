#require 'pry'

class Station
  attr_reader(:name, :workers, :wc_access, :wait_time)

  def initialize(station_name, workers, wc_access, wait_time)
    @station_name = station_name
    @workers = workers
    @wc_access = wc_access
    @wait_time =wait_time
  end

  def station_info
    info_stations = "Name is: #{station_name},"
    info_stations += "This station has wheelchair access. #{wc_access} ."
    info_stations += "The wait time is #{wait_time} minutes."
  end

  def list_workers
    workers = "Workers at this station are #{workers.join(' and ') }"
  end

end

#binding.pry
