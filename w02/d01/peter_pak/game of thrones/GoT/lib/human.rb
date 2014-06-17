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
    intro_string = "I am #{name} of the #{house} house"
  end

  def take_damage(dp)
    if dp < 0
      "Error"
    elsif @hp - dp < 0
      @hp = 0
    else
      @hp -= dp
    end
  end

  def attack(attack_who)
    attack_who.take_damage(strength)
  end

  def alive?
    @hp > 0 ? true : false
  end

end
