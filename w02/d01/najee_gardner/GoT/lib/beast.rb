class Beast
  attr_reader :name, :species, :strength, :hp

  def initialize(name, species, strength)
    @name = name
    @species = species
    @strength = strength
    @hp = 100
  end

  def take_damage(amount)
    if amount > 100
      @hp = 0
    elsif amount > 0
      @hp = hp - amount
    end
  end

  def attack(enemy)
    enemy.take_damage(strength)
  end

  def alive?
    if hp > 0
      true
    else
      false
    end
  end
end
