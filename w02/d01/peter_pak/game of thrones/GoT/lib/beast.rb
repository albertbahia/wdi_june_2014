class Beast

  def initialize(name, species, strength)
    @name = name
    @species = species
    @strength = strength
    @hp = 100
  end

  def name
    return @name.capitalize
  end

  def species
    return @species
  end

  def strength
    return @strength
  end

  def hp
    return @hp
  end

  def take_damage(dp)
    if dp < 0
      "Error"
    elsif @hp < dp
      @hp = 0
    else
      @hp -= dp
    end
  end

  def attack(attack_who)
    attack_who.take_damage(@strength)
  end

  def alive?
    @hp > 0 ? true : false
  end

end
