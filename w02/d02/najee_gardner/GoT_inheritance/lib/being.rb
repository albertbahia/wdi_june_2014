class Being
  attr_reader :name, :strength, :hp

  def initialize(name, strength, hp)
    @name = name
    @strength = strength
    @hp = hp
  end

  def take_damage(amount)
    if amount > 100
      @hp = 0
    elsif amount > 0
      @hp -= amount
    end
  end

  def attack(enemy)
    enemy.take_damage(strength)
  end

  def alive?
    hp > 0 ? true : false
  end
end
