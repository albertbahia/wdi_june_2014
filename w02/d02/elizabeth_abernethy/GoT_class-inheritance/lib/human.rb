require_relative 'being.rb'

class Human < Being

  attr_reader(:house)

  def initialize(name, house, strength)
    @house = house
    super(name, strength)
    @hp = 200
  end

  def introduce()
    return "Presenting #{name} of House #{house}."
  end

end
