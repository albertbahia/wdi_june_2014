
class Being

  def initialize(name,species,strength)
    @name = name
    @species = species
    @strength = strength
  end

  def attack(being)
    being.take_damage(@strength)
  end

  def take_damage(value)
    if value < 0
      return false
    else
      @hp = @hp - value
      if @hp <= 0
        @hp = 0
      else
        return @hp
      end
    end
  end

  def alive?
    if @hp > 0
      return true
    else
      return false
    end
  end


end
