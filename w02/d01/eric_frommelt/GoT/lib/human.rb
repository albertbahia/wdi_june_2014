class Human

  def initialize(name, house, strength)
    @name = name
    @house = house
    @strength = strength
    @hp = hp
    @original_hp = original_hp
  end

  def name
    return @name
  end

  def house
    return @house
  end

  def strength
    return @strength
  end

  def original_hp
    @hp = 200
  end

  def hp
    return @hp
  end

  def introduce
    introduce = "Name: #{name} House: #{house}"
  end

  def take_damage(damage)
    if hp <= 0
      @hp = 0
      return false
    else @hp -= 20
      return true
    end
  end

  def alive?
    hp == 0 ? true : false
  end

end
