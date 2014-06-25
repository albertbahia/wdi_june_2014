require_relative 'being.rb'

class Human < Being

  def initialize(name, house, strength)
      @name = name
      @house = house
      @strength = strength
      @hp = 200
  end

  def introduce
    return "Introducing: #{name} of House #{house}."
  end

end
