class Beast

  def initialize(name, species, strength)
    @name = name
    @species = species
    @strength = strength
    @hp = hp
    @original_hp = original_hp
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

  def original_hp
    @hp = 100
  end

  def take_damage(damage)
    if @hp == 0
      return false
    else @hp -= 20
      return true
    end
  end

  def alive?
    hp == 0 ? true : false
  end

end
