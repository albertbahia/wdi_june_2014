require_relative('../lib/being.rb')
class Human < Being

  def initialize(name, house, strength)
    super(name, strength, hp)
    @house = house
    @hp = 200

  end

  def house
    return @house
  end

  def introduce
    intro = "#{name}\n"
    intro += "#{house}"

  end

end
