class Beast
  attr_reader( :species, :strength,:hp)
  def initialize(name, species, strength)
    @name     = name
    @species  = species
    @strength = strength
    @hp = 100
  end

  def name
    @name.capitalize
  end

  # def list_info()
  #   info_string = "My name is #{name},"
  #   info_string += "my species is #{species},"
  #   info_string += "my strength is #{strength},"
  #   info_string += "my hp is #{hp}"
  # end

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
