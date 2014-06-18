require_relative 'human.rb'

class Peasant < Human

  attr_reader :farm

  def initialize(name, farm)
    super(name, nil, 1)
    @farm = farm
    @hp = 5
  end

  def introduce
    introduction = "Hello. My name is #{name} from #{farm}."
    introduction += "I am just a humble peasant."
  end

end
