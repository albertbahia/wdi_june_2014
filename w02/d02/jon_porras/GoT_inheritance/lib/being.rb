class Being

  attr_reader(:name, :strength, :hp)

  def initialize(name, strength)
    @name = name
    @strength = strength
    @hp = 100
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
