class Human

  attr_reader(:name, :house, :strength)

  def initialize(name, house, strength)
    @name = name
    @house = house
    @strength = strength
    @hp = 200
  end

  def hp
    @hp
  end

  def introduce
    "Hi!  I'm #{name.capitalize} of house #{house.capitalize}!"
  end


  def take_damage(damage_amount)
    if damage_amount >= 0
      @hp -= damage_amount
      if @hp < 0
        @hp = 0
      else
        @hp = @hp
      end
    end
  end

  def attack(victim)
    victim.take_damage(strength)
  end

  def alive?
    @hp > 0
  end




end
