class King < Human
  attr_reader(:realm)

  def initialize(name, house, realm)
    super(name, house, strength)
    @realm = realm
    @strength = 200
    @hp = 1000
  end

  def introduce
    return "I am the noble King #{name} of house #{house}, ruler and protector of #{realm}"
  end
end
