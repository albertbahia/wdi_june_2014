class Being

  def initialize(name, strength, hp)
    @name = name
    @strength = strength
    @hp = hp

  end

  def name
    return @name
  end

  def strength
    return @strength
  end

  def hp
    return @hp
  end

  def take_damage(damage_num)
    if damage_num >= 0
      if @hp - damage_num < 0
        @hp = 0
      else
        @hp -= damage_num
      end
    end
  end

  def attack(victim)
    victim.take_damage(@strength)
  end

  def alive?
    hp > 0 ? true : false
  end


end
