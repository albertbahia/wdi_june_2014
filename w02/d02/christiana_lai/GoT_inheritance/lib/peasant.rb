require_relative 'human.rb'

class Peasant < Human

  attr_reader(:farm_name)

  def initialize(name, farm_name)
    super(name, house, strength)
    @farm_name = farm_name
    @house = nil
    @strength = 1
    @hp = 5
  end

  def introduce
    return "I am #{name} of #{farm_name} and I am a humble peasant!"
  end

end
