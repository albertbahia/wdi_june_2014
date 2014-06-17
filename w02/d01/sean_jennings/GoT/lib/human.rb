
class Human < Being

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
    message = "Hi I'm, #{name} from #{house}"
    return message
  end
end
