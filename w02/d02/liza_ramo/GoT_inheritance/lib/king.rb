
require_relative 'human.rb'

class King < Human

  attr_reader(:realm)

  def initialize(name, house, realm)

    super(name, house, 200)
    @realm = realm
    @hp = 1000

  end

  def introduce
    return "My name is #{name} of house #{house} of the #{realm}. I am a noble king."
  end



end
