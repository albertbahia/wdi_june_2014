class Beast

  attr_reader :name, :species, :strength, :hp

  def initialize(name, species, strength)
    @name = name
    @species = species
    @strength = strength
    @hp = 100
  end

  def take_damage(health_loss)
    if health_loss < 0
      @hp
    elsif @hp <= health_loss
      @hp = 0
    else
      @hp -= health_loss
    end
  end

  def attack(other_thing)
    other_thing.take_damage(@strength)
  end

  def alive?()
    @hp > 0 ? true : false
  end

end
