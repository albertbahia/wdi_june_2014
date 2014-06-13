#reqire 'pry'

class Station

  attr_reader(:name, :workers, :access, :wait_time)

  def initialize(name, workers, access, wait_time)
    @name = name
    @workers = workers
    @access = access
    @wait_time = wait_time
  end

  def list_workers
      workers.join(' and ')
  end

  def list_all_info
    info_string = "Name of Station: '#{name}'"
    info_string += "Wheelchair Accessible?: #{access}"
    info_string += "Average Wait Time: #{wait_time} minutes"
  end

end
