class Being

  attr_reader(:name, :strength, :hp)

  def initialize(name, strength)
    @name = name
    @strength = strength
    @hp = 100
  end

  def take_damage(amt)
    if amt > 0
      @hp -= amt
      @hp = 0 if @hp < 0
    end
  end

  def attack(enemy)
    enemy.take_damage(self.strength)
  end

  def alive?
    @hp > 0
  end

end
