
class Being

  attr_reader(:name, :strength, :hp)

  def initialize(name, strength)
    @name = name
    @strength = strength
    @hp = 100
  end

  def take_damage(damage)
    if damage > 0
      @hp = [@hp - damage, 0].max
    end
  end

  def attack(prey)
    prey.take_damage(@strength)
  end

  def alive?
    hp > 0 ? true : false
  end

end
