class Human

  def initialize(name, house, strength, hp)
      @name = name
      @house = house
      @strength = strength
      @hp = hp
  end

  def name
    @name
  end

  def house
    @house
  end

  def strength
    @strength
  end

  def hp
    @hp
  end

  def introduce
    return "Introducing: #{name} of House #{house}."
  end

  def take_damage(damage)
    damage < 0 ? false : @hp = hp - damage
    hp < 0 ? @hp = 0 : @hp = hp
  end

  def attack(victim)
    victim.take_damage(@strength)
  end

  def alive?
     hp > 0 ? true : false
  end

end
