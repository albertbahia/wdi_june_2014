class Beast

  # attr_reader(:name, :species, :strength, :hp)

  def initialize(name, species, strength)
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
    if @hp < 0
      return 0
    else
      @hp
    end
  end

  def take_damage(damage)
    if damage < 0
      return nil
    elsif
    new_hp = @hp - damage
    @hp = new_hp
    end
  end

  def attack(beast)
    beast.take_damage(@strength)
  end

  def alive?
    if @hp > 0
      return true
    else
      false
    end
  end
end
