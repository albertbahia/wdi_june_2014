require_relative './human.rb'

class Peasant < Human

  attr_reader :farm

  def initialize(name, farm)
    super(name, nil, 1)
    @hp = 5
    @farm = farm
  end

  def introduce()
    return_string = "Introducing the humble peasant #{name} from "
    return_string += "the poor and disease-ridden farm #{farm}"
  end

end
