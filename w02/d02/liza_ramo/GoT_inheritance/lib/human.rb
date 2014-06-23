
require_relative 'being.rb'

class Human < Being

  attr_reader(:house)

  def initialize(name, house, strength)
    super(name, strength)
    @house = house
    @hp = 200
  end

end
