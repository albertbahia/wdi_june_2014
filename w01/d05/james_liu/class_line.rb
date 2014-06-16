class Line

attr_reader( :name, :ind_stations)

  def initialize(name, ind_stations)
    @name = name
    @ind_stations = ind_stations
  end
  
  def line_name
    return "The (#{name}) Train"
  end
  
 def list_stations
     station_info = ind_stations.map { |station| station.list_info }
     station_info.join("\n")
   end
   
   def train_calc(station_on, station_off)
      on_index = ind_stations.index { |station| station.name == station_on }
      off_index = ind_stations.index { |station| station.name == station_off }
      return (off_index - on_index).abs
   end

end
