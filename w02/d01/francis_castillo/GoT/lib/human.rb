
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
    intro = "#{name}\n"
    intro += "#{house}"
    
  end

  def take_damage(damage_num)
    if damage_num >= 0
      if @hp - damage_num < 0
        @hp = 0
      else
        @hp = @hp - damage_num
      end
    end
  end

  def attack(victim)
    victim.take_damage(@strength)
  end

  def alive?
    if @hp > 0
      true
    else
      false
    end
  end
end
