require_relative("human.rb")

class King < Human

  attr_reader(:realm)

  def initialize(name, house, realm)
    super(name, house, 200)
    @realm = realm
    @hp = 1000
  end

  def introduce
    super()
    return "I am nobel king #{name} of the house #{house} guarding the realm of #{realm}"
  end

end
