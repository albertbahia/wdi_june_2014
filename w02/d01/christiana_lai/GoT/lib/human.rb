class Human

  attr_reader :name, :house, :strength, :hp

  def initialize(name, house, strength)
    @name = name
    @house = house
    @strength = strength
    @hp = 200
  end

  def introduce
    "I am #{name} of #{house}"
  end

  def take_damage (damage_amount)
    if damage_amount >= 200
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
