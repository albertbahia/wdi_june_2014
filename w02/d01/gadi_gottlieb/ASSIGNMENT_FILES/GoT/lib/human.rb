class Human

  def initialize(name, house, strength)
    @name = name
    @house = house
    @strength = strength
    @hp = 200
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

  def hp
    return @hp
  end

  def introduce
    "Hi my name is #{@name} and I have a house in #{@house}."
  end

  def take_damage(damage_taken)
    if damage_taken < 0
    elsif @hp - damage_taken < 0
      @hp = 0
    else @hp - damage_taken > 0
      @hp -= damage_taken
    end
  end

  def attack(victim)
    victim.take_damage(@strength)
  end

  def alive?
    if hp > 0
      true
    else
      false
    end
  end
end
