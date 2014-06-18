require_relative('human.rb')

class Peasant < Human
  attr_reader(:farm)

  def initialize(name, farm)
    @name = name
    @farm = farm
    @strength = 1
    @hp = 5
  end

  def introduce
    return "I am humble peasant #{name} of farm #{farm}"
  end

end
