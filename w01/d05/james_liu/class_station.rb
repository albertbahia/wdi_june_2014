class Station

attr_reader(:name, :workers, :wheelchair, :wait)

def initialize(name, workers, wheelchair, wait)
  @name = name
  @workers = workers
  @wheelchair = wheelchair
  @wait = wait
  end

  def list_info
    info_string = "Name: #{name} | "
    info_string += "Workers: #{workers.join(", ")} | "
    info_string += "WC Accessible: #{wheelchair} | "
    info_string += "#{wait} hour wait time."
  end
  
end
