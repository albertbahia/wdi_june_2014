class Peasant < Being

  attr_reader(:farm, :house)

  def initialize(name, farm)
    super(name, strength)
    @farm = farm
    @house = nil
    @strength = 1
    @hp = 5
  end

  def introduce()
    return ("Introducing humble peasant, #{name} of #{farm}.")
  end
end
