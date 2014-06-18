require_relative ('human.rb')

class Peasant < Human

  attr_reader(:farm_name)

  def initialize(name, farm_name)
    super(name, house, strength)
    @farm_name = farm_name
    @strength = 1
    @house = nil
    @hp = 5
  end

  def introduce
    super()
    return "I am #{name}, a humble peasant from #{farm_name}"
  end


end
