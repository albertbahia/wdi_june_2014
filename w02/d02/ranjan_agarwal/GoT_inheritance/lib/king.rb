require_relative 'human.rb'
class King < Human
  attr_reader(:realm, :strength, :hp)
  def initialize(name,house,realm)
    super(name,house,strength)
    @realm = realm
    @strength = 200
    @hp = 1000
  end

  def introduce
    super() + "my realm is #{realm}. I am a noble king"
  end
end
