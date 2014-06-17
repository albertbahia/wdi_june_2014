require_relative './lib/being.rb'

class Human

  def initialize(name, house, strength)
    @name = name
    @house = house
    @strength = strength
    @hp = 200
  end

  def name()
    @name.capitalize
  end

  def house()
    @house
  end

  def strength()
    @strength = 2
  end

  def hp()
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
    else
      new_hp = (@hp - damage)
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
      return false
    end
  end


end
