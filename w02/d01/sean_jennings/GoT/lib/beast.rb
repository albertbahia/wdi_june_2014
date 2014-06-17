class Beast

  def initialize(name,species,strength)
    @name = name
    @species = species
    @strength = strength
    @hp = 100
  end

  def name
    @name
  end

  def species
    @species
  end

  def strength
    @strength
  end

  def hp
    @hp
  end

  def take_damage(value)
    if value < 0
      return false
    else
      @hp = @hp - value
      if @hp <= 0
        @hp = 0
      else
        return @hp
      end
    end
  end

  def attack(beast)
    beast.take_damage(@strength)
  end

  def alive?
    if @hp <= 0
      return false
    else
    return true
    end
  end

end
