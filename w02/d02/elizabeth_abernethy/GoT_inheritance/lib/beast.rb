require_relative './lib/being.rb'

class Beast

  def initialize(name, species, hp)
    @name = name
    @species = species
    @strength = strength
    @hp = 100
  end

  def name()
    @name.capitalize
  end

  def species()
    @species
  end

  def strength()
    @strength = 10
  end

  def hp()
    if @hp < 0
      return 0
    else
      @hp
    end
  end

  def take_damage(damage)
    if damage < 0
      return nil
    else
      new_hp = (@hp - damage)
      @hp = new_hp
    end
  end

  def attack(beast)
    beast.take_damage(@strength)
  end

  def alive?
    if @hp > 0
      return true
    else
      return false
    end
  end


end
