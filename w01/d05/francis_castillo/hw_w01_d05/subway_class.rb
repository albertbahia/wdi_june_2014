#require 'pry'
class Subway

  attr_reader(:name, :list_trains)
  def initialize(name, list_trains)
    @name = name
    @list_trains = list_trains
  end

  # def name
  #   return @name
  # end
  #
  # def list_trains
  #   return @list_trains
  # end

  #calculate trip distance between two trains
  def calculate_distance(*trains)

    return trains.reduce(:+ )
  end


end
#binding.pry
