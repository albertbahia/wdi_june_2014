require_relative('../lib/human.rb')
class King < Human

  def initialize(name, house, realm)
    super(name, strength, hp)
    @house = house
    @realm = realm
    @strength = 200
    @hp = 1000

  end

  def house
    return @house
  end

  def realm
    return @realm
  end

  def introduce
    intro = "I am the noble king #{name}\n"
    intro += "of house #{house} from the land of #{realm}"

  end

end
