class Beast

  #attr_reader(:name, :species, :strength, :hp)
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
    return @hp
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
