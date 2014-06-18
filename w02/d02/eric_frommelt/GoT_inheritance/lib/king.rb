require_relative('human.rb')

class King < Human
  attr_reader(:realm)

  def initialize(name, house, realm)
    super(name, house, 200)
    @realm = realm
    @hp = 1000
  end

  def introduce
    return "I am the noble king #{name} of the house #{house} ruling the realm #{realm}"
  end

end
