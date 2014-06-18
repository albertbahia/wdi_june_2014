class Human < Being

  def initialize(name, house, strength)
    super(name, strength)
    @house = house
    @hp = 200
    @king = false
  end

  def house
    return @house
  end

  def introduce
    "I am #{name} of the #{house} house"
  end

  def king
    return @king
  end


end
