class King < Being

  attr_reader(:house, :realm)

  def initialize(name, house, realm)
    super(name, strength)
    @house = house
    @realm = realm
    @strength = 200
    @hp = 1000
  end

  def introduce()
    return("Introducing #{name}, of house #{house}, noble ruler of the #{realm}. ")
  end

end
