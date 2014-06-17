class Beast

  attr_reader(:name, :species, :strength)

  def initialize(name, species, strength)
    @name = name
    @species = species
    @strength = strength
  end

  def hp
    @hp = 100
  end

  def take_damage(damages)
    @hp = @hp - damages
    if @hp <= 0 && @hp >= 100
      @hp
    end
  end

  def attack(victim)
    #wrote this and then moved hp out of initialize method.  revisit.
    victim.take_damage(strength)
  end

  def alive?
    if @hp > 0
      true
    else
      false
    end
  end


end
