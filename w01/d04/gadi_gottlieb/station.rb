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
# require 'pry'
#
# class Station
#
#   attr_reader(:name, :workers, :wheelchair_accessible, :wait_time)
#   def initialize(name, workers, wheelchair_accessible, wait_time)
#     @name = name
#     @workers = workers
#     @wheelchair_accessible = wheelchair_accessible
#     @wait_time = wait_time
#   end
#
#   def list_workers
#     workers.join(' and ')
#     end
#   end
#
#   def list_info
#     info_string = "Name: #{name},"
#     info_string += " WC ACCESSIBLE: #{wheelchair_accessible},"
#     info_string += " #{wait_time} wait time."
#   end
#
# end

#   attr_reader(:name, :employees, :wheelchairs, :avg_time)
# # initial rules
#   def initialize(intial_name, employee_list, wheelchairs_access, avg_time)
#     @name = initial_name
#     @employees = employee_list
#     @wheelchairs = wheelchairs_access
#     @avg_time = avg_time
#   end
#
# # name of station method
#   def new_station(new_name)
#     @name = new_name
#   end
#
# # list of workers
#   def new_employee(worker)
#     @employees = worker
#   end
# # avg time
#   def avg_wait(time)
#     @avg_time =
#   end
