class Being
  attr_reader(:house, :strength)
  def initialize(name,house,strength)
    @name = name
    @strength = strength
  end

  def name
    @name.capitalize
  end

  def alive?
    hp > 0 ? true : false
  end

  def take_damage(damage_amount)
    if damage_amount < 0
      return @hp
    elsif alive?
      @hp -= damage_amount
      if hp < 0
        @hp = 0
      elsif hp = 0
        return false
      else
        return false
      end
    else
      return false
    end
  end

  def attack(enemy)
    enemy.take_damage(@strength)
  end

end
