require_relative 'human.rb'

class Peasant < Human

  attr_reader(:farm_name)

  def initialize(name, farm_name)
    super(name, house, strength)
    @hp = 5
    @farm_name = farm_name
    @strength = 1
  end

  def introduce()
    return "Introducing the humble peasant, #{name} of #{farm_name}!"
  end


end
