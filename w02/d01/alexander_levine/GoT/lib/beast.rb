class Beast

  attr_reader :name, :species, :strength, :hp

  def initialize(name, species, strength)
    @name = name
    @species = species
    @strength = strength
    @hp = 100
  end

  def take_damage(damage_num)
    if damage_num < 0
      @hp
    elsif @hp < damage_num
      @hp = 0
    else
      @hp -= damage_num
    end
  end

  def attack(thing_to_be_attacked)
    thing_to_be_attacked.take_damage(strength)
  end

  def alive?
    hp > 0 ? true : false
  end

end
