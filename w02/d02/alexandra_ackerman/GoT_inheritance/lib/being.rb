class Being

  attr_reader(:name, :strength, :hp)

  def initialize(name, strength)
    @name = name
    @strength = strength
    @hp = 100
  end

  def hp
    if @hp < 0
      return @hp = 0
    else
      return @hp
    end
  end

  def take_damage(damage)
    if damage > 0
      @hp = [@hp - damage].max
    end
  end

  def attack(being)
    being.take_damage(@strength)
  end

  def alive?
    if @hp > 0
      return true
    else
      false
    end 
  end

end
