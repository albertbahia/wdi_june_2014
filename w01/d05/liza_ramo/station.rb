class Station

  attr_reader( :name, :workers, :wheelchair_accessible, :wait_time)

  def initialize(name, workers, wheelchair_accessible, wait_time)
    @name = name
    @workers = workers
    @wheelchair_accessible = wheelchair_accessible
    @wait_time = wait_time
  end

  def list_workers
    workers.join(' and ')
  end

  def list_info
    info_string = "Name: #{name},"
    info_string += " WC ACCESSIBLE: #{wheelchair_accessible},"
    info_string += " #{wait_time} wait time."
  end

end
