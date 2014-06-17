class Human

  attr_reader :name, :house, :strength, :hp

  def initialize(name, house, strength)
    @name = name
    @house = house
    @strength = strength
    @hp = 200
  end

  def introduce
    introduction = "Hello. My name is #{name} from house #{house}."
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
