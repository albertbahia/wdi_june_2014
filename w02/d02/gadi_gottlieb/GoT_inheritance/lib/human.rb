require_relative 'being.rb'

class Human < Being
  attr_reader(:name, :house, :strength, :hp)

  def initialize(name, house, strength)
    super(name, strength)
    @house = house
    @hp = 200
  end

  def introduce
    introduction = "Hi my name is #{name} and I have a house in #{house}."
  end
  
end
