class Beast

  def initialize(name, species, strength)
    @name = name
    @species = species
    @strength = strength
    @hp = 100
  end

  def name
    return @name
  end

  def species
    return @species
  end

  def strength
    return @strength
  end

  def hp
    @hp
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
    if @hp > 0
      true
    else
      false
    end
  end

end
