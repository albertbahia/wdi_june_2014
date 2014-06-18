class Being
  attr_reader(:name, :strength, :hp)

  def initialize(name, strength)
    @name = name
    @strength = strength
    @hp = 100
  end

  def take_damage(damage)
    if damage > 0
      @hp -= damage
      @hp = 0 if @hp < 0
    end
    @hp
  end

  def attack(other)
    other.take_damage(strength)
  end

  def alive?()
    @hp > 0
  end
end
