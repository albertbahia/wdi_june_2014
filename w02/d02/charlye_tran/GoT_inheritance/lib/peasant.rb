class Peasant < Human
  attr_reader(:farm_name)

  def initialize(name, farm_name)
    super(name, house, strength)
    @strength = 1
    @house = nil
    @farm_name = farm_name
    @hp = 5
  end

  def introduce
    return "I am #{name}. I come from farm #{farm_name}. I am just a humble peasant."
  end
end
