
class King < Human
  attr_reader(:name, :house, :realm)

  def initialize(name,house,realm)
    @name = name
    @house = house
    @realm = realm
    @strength = 200
    @hp = 1000
  end

  def introduce
    "#{name} is a noble king from #{house} and realm #{realm}"
  end
end
