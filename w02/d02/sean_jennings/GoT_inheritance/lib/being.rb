class Being

  attr_reader(:name, :hp, :strength)
  def initialize(name,strength)
    @name = name
    @hp = 0
    @strength = strength
  end

  def take_damage(damage_taken)
    if damage_taken < 0
      return false
    else
      @hp = @hp - damage_taken
      if @hp <= 0
        @hp = 0
      else
        return @hp
      end
    end
  end

  def attack(being)
    being.take_damage(@strength)
  end

  def alive?
    if @hp > 0
      return true
    else
      return false
    end
  end

end
