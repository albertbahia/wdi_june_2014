#require 'pry'
class Beast

  attr_reader(:name, :species, :strength)
  def initialize(name, species, strength)
    @name = name
    @species = species
    @strength = strength
    @hp = 100
  end

  def hp
    @hp
  end

  def take_damage(damage_amt)
    if damage_amt.to_i >= 0
      @hp -= damage_amt
      if @hp < 0
        @hp = 0
      else
        @hp = hp
      end
    else
      false
    end
  end

  def attack(prey)
    prey.take_damage(self.strength)
  end

  def alive?
    hp > 0
  end
end #End Class

#binding.pry
