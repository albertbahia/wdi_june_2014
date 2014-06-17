class Human
  attr_reader(:house, :strength, :hp)
  def initialize(name,house,strength)
    @name = name
    @house = house
    @strength = strength
    @hp = 200
  end

  def name
    @name.capitalize
  end

  def introduce()
    info_string = "My name is #{name},"
    info_string += "my house is #{house}"
  end

  def alive?
    hp > 0 ? true : false
  end

  def take_damage(damage_amount)
    if damage_amount < 0
      return @hp
    elsif alive?
      @hp -= damage_amount
      if hp < 0
        @hp = 0
      elsif hp = 0
        return false
      else
        return false
      end
    else
      return false
    end
  end

  def attack(enemy)
    enemy.take_damage(@strength)
  end


end
