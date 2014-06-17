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
    introduction = "Name: #{name} from House #{house}."
  end

  def take_damage(damage)
    if damage > 0
      @hp -= damage
      if @hp <= 0
        @hp = 0
      else
        return @hp
      end
    end
  end


  def alive?
    if hp > 0
      true
    else hp =
      false
    end
  end

  def attack(human)
    human.take_damage(strength)
  end

end
