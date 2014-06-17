class Beast

  attr_reader(:name, :species, :strength)

  def initialize(name, species, strength)
    @name = name
    @species = species
    @strength = strength
    @hp = 100
  end

  def hp
    @hp
  end

  def take_damage(damage)
    if damage > 0
      @hp -= damage
      if @hp < 0
        @hp = 0
      end
    end
  end

  def attack(beast)
    beast.take_damage(strength)
  end

  def alive?
    if hp > 0
      true
    else
      false
    end
  end

end
