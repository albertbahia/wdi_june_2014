class Beast

  attr_reader :name, :species, :strength, :hp

  def initialize(name, species, strength)
    @name = name
    @species = species
    @strength = strength
    @hp = 100
  end

  def take_damage(damage_amount)
    if damage_amount >= 100
      @hp = 0
    elsif damage_amount < 0
    else
      @hp = hp - damage_amount
    end
  end

  def attack(enemy)
    enemy.take_damage(strength)
  end

  def alive?
    hp > 0? true : false
  end
end
