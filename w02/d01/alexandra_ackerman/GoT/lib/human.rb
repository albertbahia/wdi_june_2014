class Human

  def initialize(name, house, strength)
    @name = name
    @house = house
    @strength = strength
    @hp = 200
  end

  def name()
    @name
  end

  def house()
    @house
  end

  def strength()
    @strength
  end

  def hp
    if @hp < 0
      return 0
    else
      @hp
    end
  end

  def introduce()
    return "Presenting #{name} of house #{house}."
  end

  def take_damage(damage)
    if damage < 0
      return nil
    elsif
    new_hp = @hp - damage
    @hp = new_hp
    end
  end

  def attack(human)
    human.take_damage(@strength)
  end

  def alive?
    if @hp > 0
      return true
    else
      false
    end
  end
  # def take_damage(damage)
  #   if damage < 0
  #     return nil
  #   else damage >= 0
  #     new_hp = @hp - damage
  #     return new_hp
  #   end
  # end

end
