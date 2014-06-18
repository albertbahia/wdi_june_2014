require_relative 'human.rb'

class King < Human

  attr_reader(:realm)

  def initialize(name, house, realm)
    super(name, house, strength)
    @realm = realm
    @strength = 200
    @hp = 1000
  end

  def introduce
    return "I am #{name} of house #{house} in the #{realm}. I am a noble king."
  end


end
