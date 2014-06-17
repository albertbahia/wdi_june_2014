class Beast

  attr_reader(:name, :species, :strength, :hp)

  def initialize(name, species, strength)
    @name = name
    @species = species
    @strength = strength
    @hp = 100
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


  def attack(beast)
    beast.take_damage(@strength)
  end

  def alive?

    if @hp > 0
      return true
    else
      return false
    end

    # elsif @hp = 0



    # end

  end

end


# ghost = Beast.new("Ghost", "Direwolf", 10)
#
# draco= Beast.new('Draco', 'Dragon', 30)
#
# beast1.take_damage(beast1.strength)
