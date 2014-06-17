class Beast
  attr_reader(:name, :species, :strength, :hp)

  def initialize(name, species, strength)
    @name = name
    @species = species
    @strength = strength
    @hp = 100
  end

  def take_damage(amt)
    if amt > 0
      @hp -= amt
      @hp = 0 if @hp < 0
    end
  end

  def attack(enemy_beast)
    enemy_beast.take_damage(self.strength)
  end

  def alive?
    @hp > 0
  end
end
