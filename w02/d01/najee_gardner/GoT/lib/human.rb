class Human
  attr_reader :name, :house, :strength, :hp

  def initialize(name, house, strength)
    @name = name
    @house = house
    @strength = strength
    @hp = 200
  end

  def introduce
    "I'm #{name.capitalize} of house #{house.capitalize}."
  end

  def take_damage(damage)
    if damage > 200
      @hp = 0
    elsif damage > 0
      @hp -= damage
    end
  end

  def attack(enemy)
    enemy.take_damage(strength)
  end

  def alive?
    hp > 0 ? true : false
  end
end
