class Human < Being

  def initialize(name, house, strength)
    super(name, strength)
    @house = house
    @hp = 200
  end

  def house
    return @house.capitalize
  end

  def introduce
    "I am #{name} of the #{house} house"
  end


end
