class Human

  attr_reader(:name, :house, :strength, :hp)


  def initialize(name, house, strength)
    @name = name
    @house = house
    @strength = strength
    @hp = 200
  end


  def introduce
    "#{name}" + "#{house}"
  end


  def take_damage(damage_hp)
    if damage_hp < 0
      "Error"

    elsif @hp < damage_hp

      @hp = 0

    else
      @hp -= damage_hp
    end

  end


  def attack(human)
    human.take_damage(@strength)
  end


  def alive?
    if @hp > 0
      return true
    else
      return false
    end

  end


end

# joffrey = Human.new('Joffrey', 'Lannister', 2)
# joffrey.introduce
