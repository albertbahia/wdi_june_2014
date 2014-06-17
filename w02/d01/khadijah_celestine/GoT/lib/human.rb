class Human
  attr_reader(:name, :house, :strength, :hp)

  def initialize(name, house, strength)
    @name = name
    @house = house
    @strength = strength
    @hp = 200
  end

  def introduce
    "#{@name}, lives at #{@house}"
  end

  def take_damage(amt)
    if amt > 0
      @hp -= amt
      @hp = 0 if @hp < 0
    end
  end

  def attack(enemy_human)
    enemy_human.take_damage(self.strength)
  end

  def alive?
    @hp > 0
  end
end
