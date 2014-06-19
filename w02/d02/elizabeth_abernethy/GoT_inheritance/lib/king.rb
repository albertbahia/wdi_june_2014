require_relative 'human.rb'

class King < Human

  attr_reader(:realm)

  def initialize(name, house, realm)
    super(name, house, strength)
    @house = house
    @hp = 1000
    @realm = realm
    @strength = 200
  end

  def introduce()
    return "Introducing the noble king, #{name} of the honorable House #{house} in #{realm} realm!"
  end

end
