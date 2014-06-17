
class Human

  def initialize(name,house,strength)
    @name = name
    @house = house
    @strength = strength
    @hp = 200
  end

  def name
    @name
  end

  def house
    @house
  end

  def strength
    @strength
  end

  def hp
    @hp
  end

  def introduce
    puts "Hi I'm, " + @name + " from " + @house
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

  def attack(human)
    human.take_damage(@strength)
  end

  def alive?
    if @hp > 0
      return true
    elsif @hp == 0
      return false
    end
  end
end
