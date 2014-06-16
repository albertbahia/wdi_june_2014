class Station

  attr_reader :name, :wheelchair_accessible, :avg_wait_time

  def initialize(name, wheelchair_accessible, avg_wait_time)
    @name = name
    @wheelchair_accessible = wheelchair_accessible
    @avg_wait_time = avg_wait_time
  end

  def display_station_info
    station_info_string = "Station Name: #{name}\n"
    station_info_string += "Wheelchair Accessible? #{wheelchair_accessible}\n"
    station_info_string += "Average Wait Time: #{avg_wait_time.to_s} minutes\n"
  end

end
