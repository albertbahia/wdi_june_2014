require_relative './human.rb'

class Peasant < Human

attr_reader(:farm_name)

  def initialize(name, farm_name)
    super(name, strength, hp)
    @farm_name = farm_name
    @house = 0
    @strength = 1
  end

  def hp()
    @hp = 5
  end

  def introduce()
    return "I am #{name} of House #{house}."
    return "I am just a humble peasant."
  end

end
