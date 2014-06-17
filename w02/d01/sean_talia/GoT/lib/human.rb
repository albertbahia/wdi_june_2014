class Human

  attr_reader :name, :house, :strength, :hp

  def initialize(name, house, strength)
    @name = name
    @house = house
    @strength = strength
    @hp = 200
  end

  def introduce()
    return_string = "Introducing to Westeros, the noble #{name}, "
    return_string += "from the house of #{house}!!"
  end

  def take_damage(health_loss)
    if health_loss < 0
      @hp
    elsif @hp <= health_loss
      @hp = 0
    else
      @hp -= health_loss
    end
  end

  def attack(other_thing)
    other_thing.take_damage(@strength)
  end

  def alive?()
    @hp > 0 ? true : false
  end

end
