#This test is not yet complete.  It has 3 failures left.

class Beast

  attr_reader(:name, :species, :strength, :hp)

  def initialize(name, species, strength)
    @name = name
    @species = species
    @strength = strength
    @hp = 100
  end

  def take_damage(damage)
    if damage < 0
      false
    else
    @hp = @hp - damage
      if @hp >= 0 && @hp <= 100
        @hp
      else
        @hp = 0
      end
    end
  end

  def attack(beast)
    #method return needed here
  end


end
