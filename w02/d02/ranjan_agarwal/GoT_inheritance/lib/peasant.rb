require_relative 'human.rb'
class Peasant < Human
  attr_reader(:farm)
  def initialize(name,farm)
    super(name,house,strength)
    @farm = farm
    @strength = 1
    @hp = 5
  end

  def introduce()
    return "My name is #{name}, My Farm is #{farm}. I am just a humble peasant"
  end
end
