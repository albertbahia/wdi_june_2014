require_relative('../lib/human.rb')
class Peasant < Human

  def initialize(name, farm_name)
    super(name, strength, hp)
    @farm_name = farm_name
    @house = nil
    @strength = 1
    @hp = 5

  end

  def farm_name
    return @farm_name
  end
  def introduce
    intro = "My name is #{name}, I am but a humble peasant\n"
    intro += "from #{farm_name}"

  end

end
