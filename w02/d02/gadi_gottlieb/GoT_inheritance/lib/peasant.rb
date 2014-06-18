require_relative 'human.rb'

class Peasant < Human
  attr_reader(:name, :farm)

  def initialize(name, farm)
    super(name, nil, 1)
    @farm = farm
    @hp = 5
  end

  def introduce
    introduction = "Hi my name is #{name} and I have a farm in #{farm}"
    introduction += " and I am just a humble peasant."
  end

end
