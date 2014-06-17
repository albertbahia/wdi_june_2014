#require 'pry'
class Station

  attr_reader(:name, :workers, :wc_access, :wait_tm)

  def initialize(name, workers, wc_access, wait_tm)
    @name = name
    @workers = workers
    @wc_access = wc_access
    @wait_tm = wait_tm
  end
  # the getter methods are commented out because the attr_reader creates these methods in the background
  # def name
  #   return @name
  # end
  #
  # def workers
  #   return @workers
  # end
  #
  # def wc_access
  #   return @wc_access
  # end
  #
  # def wait_tm
  #   return @wait_tm
  # end

  #this method will join the array of workers passed to the class object and them with a ','!
  def list_workers
    return workers.join(', ')
  end

  #this method will list the info available for each station!
  def list_info
    station_info = "Name: #{name}\n"
    station_info += "Wheelchair Accessibility: #{wc_access}\n"
    station_info += "The average wait time for this station is #{wait_tm} minutes\n"
  end

end
#binding.pry
