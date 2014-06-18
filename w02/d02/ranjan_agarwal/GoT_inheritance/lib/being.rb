class Being
  attr_reader(:strength, :hp)
  def initialize(name,strength)
    @name = name
    @strength = strength
    @hp = 100
  end

  def name
    @name.capitalize
  end

  def alive?
    hp > 0 ? true : false
  end

  def take_damage(damage)
    if damage > 0
      @hp = [@hp - damage, 0].max
    end
  end


  def attack(enemy)
    enemy.take_damage(@strength)
  end

end
