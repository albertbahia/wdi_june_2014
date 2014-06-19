class Human < Being

  attr_reader(:house)
  def initialize(name, house, strength)
    super(name, strength)
    @house = house
    @hp = 200
  end

  def introduce
    "#{@name}, lives at #{@house}"
  end
end
