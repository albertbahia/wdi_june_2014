#This test is not yet complete.  It has 1 failure left.

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

  def attack(ghost)
    #need to complete this method
  end

  def alive?
   if @hp > 0
     true
   else
     false
   end
   end

end
