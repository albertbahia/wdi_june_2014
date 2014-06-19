require_relative 'being.rb'

class Human < Being
  attr_reader :house

  def initialize(name, house, strength)
    super(name, strength, 200)
    @house = house
  end

  def introduce
    "I'm #{name.capitalize} of house #{house.capitalize}."
  end
end
