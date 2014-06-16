#require 'pry'

class Station

  attr_reader(:name, :workers, :wheelchair, :wait_time)

  def initialize(name, workers, wheelchair, wait_time)
    @name = name
    @workers = workers
    @wheelchair = wheelchair
    @wait_time = wait_time
  end

  def list_workers
    workers.join(" and ")
  end

  def list_info
    info_string = "Station: #{name} / "
    info_string += "Workers: #{list_workers}/ "
    info_string += "Wheelchair Accessable? #{wheelchair}/ "
    info_string += "Wait Time: #{wait_time}"
  end

end




#binding.pry
