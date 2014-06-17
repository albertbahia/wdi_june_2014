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

  def take_damage(damage_amount)
    if damage_amount >= 0
      @hp -= damage_amount
      if @hp < 0
        @hp = 0
      else
        @hp = @hp
      end
    end
  end

  def attack(victim)
    #wrote this and then moved hp out of initialize method.  revisit.
    victim.take_damage(@strength)
  end

  def alive?
    @hp > 0
  end


end
