class Being

  attr_reader(:name, :strength, :hp)

  def initialize(name, strength)
    @name = name
    @strength = strength
    @hp = 100
  end

  def take_damage(damage)
    if damage < 0
      false
    else
      @hp = @hp - damage
      if @hp >= 0
        @hp
      else
        @hp = 0
      end
    end
  end

  def attack(other_being) #original being is ghost and ghost attacks other being which is defined as is draco in beast_spec.rb
    other_being.take_damage(@strength) #other_being refers to draco and draco is .take_damage (taking damage) with a parameter of @strength which refers to ghost.strength which is defined as 10 in beast_spec.rb
  end

  def alive?
    if @hp > 0
      true
    else
      false
  end
end
end
