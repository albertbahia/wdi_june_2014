class Human

  attr_reader(:house, :strength, :hp)

  def initialize(name, house, strength)
    @name = name
    @house = house
    @strength = strength
    @hp = 200
  end

  def name
    @name.capitalize
  end

  def introduce
    stats_string = "My name is #{name} and I come from House #{house}."
  end

  def alive?
    if
      hp > 0
      return true
    else
      return false
    end
  end

  def take_damage(damage_amount)
    if damage_amount < 0
      # take_damage = 0
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

  def attack(other_human)
    other_human.take_damage(@strength)
  end




end
