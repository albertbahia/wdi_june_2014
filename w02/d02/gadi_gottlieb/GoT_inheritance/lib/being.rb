class Being
  attr_reader(:name, :strength,)

  def initialize(name, strength)
    @name = name
    @strength = strength
    @hp = hp
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
    @hp > 0
  end

end
