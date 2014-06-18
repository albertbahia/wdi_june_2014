class Being

  attr_reader :name, :strength, :hp

  def initialize(name, strength)
    @name = name
    @strength = strength
    @hp = 100
  end

  def take_damage(damage)
    if damage < 0
      @hp
    elsif @hp <= damage
      @hp = 0
    else
      @hp -= damage
    end
  end

  def attack(other_thing)
    other_thing.take_damage(@strength)
  end

  def alive?()
    @hp > 0 ? true : false
  end

end
