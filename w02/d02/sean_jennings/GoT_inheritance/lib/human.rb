class Human < Being

  attr_reader(:name, :house, :strength, :hp)
  def initialize(name,house,strength)
    @name = name
    @house = house
    @strength = strength
    @hp = 200
  end

  def introduce
    "#{name}, from #{house}"
  end
end
