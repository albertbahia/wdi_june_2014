class Being

  attr_reader(:name, :house, :strength, :hp)

  def initialize(name, house, strength)
    @name = name
    @house = house
    @strength = strength
    @hp = 100
  end

  def name
    @name
  end

  def species
    @species
  end

  def strength
    @strength
  end

  def hp
    @hp
  end

  def take_damage(damage)
    damage < 0 ? false : @hp = hp - damage
    hp < 0 ? @hp = 0 : @hp = hp
  end

  def attack(victim)
    victim.take_damage(@strength)
  end

  def alive?
     hp > 0 ? true : false
  end


end
