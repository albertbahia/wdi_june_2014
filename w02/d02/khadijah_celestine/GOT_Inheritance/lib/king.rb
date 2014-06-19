class King < Human
  attr_reader(:realm)

  def initialize(name, house, realm)
    @name = name
    @house = house
    #super(name, house)
    @realm = realm
    @strength = 200
    @hp = 1000
  end

  def introduce
    "#{name}, lives at #{house}, with a kingdom of #{realm} and is a noble king."
  end
end
