
require 'pry'

class Being

  attr_reader(:name, :strength, :hp)

  def initialize(name, strength)
    @name = name
    @strength = strength
    @hp = 100
  end

  def name
    @name.capitalize
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
      elsif hp == 0
        return false
      else
        return false
      end
    else
      return false
    end
  end

  def attack(other_being)
    other_being.take_damage(@strength)
  end



end
