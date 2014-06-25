#require 'pry'

class Subway

  attr_reader(:name, :lines)

  def initialize(name, lines)
    @name = name
    @lines = lines
  end

  def list_name
    return "The #{name} Subway"
  end

  def list_lines
    return lines.join(" ")
  end

  def calc_distance(geton, getoff)
    index1 = get_index(geton)
    index2 = get_index(getoff)
    return (index2 - index1).abs
  end

  def get_index(station_name)
    return station.index {|station| station.name == station_name}
  end

end


#binding.pry
