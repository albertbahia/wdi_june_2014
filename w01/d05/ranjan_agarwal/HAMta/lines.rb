require 'pry'
class Lines
  attr_reader(:train_name, :list_of_stations)
  def initialize(name, list_of_stations)
    @train_name = train_name
    @list_of_stations = list_of_stations
  end
end
