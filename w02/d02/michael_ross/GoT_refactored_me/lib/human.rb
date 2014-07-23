require_relative './being.rb'

class Human < Being

  attr_reader(:house)

  def initialize(house)
    super(name, strength)
    @house = house
    @hp = 200
  end

  def introduce
    "Hi!  I'm #{name.capitalize} of house #{house.capitalize}!"
  end


end
