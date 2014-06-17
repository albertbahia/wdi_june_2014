class Being
  attr_reader(:name, :strength, :hp)
  def initialize(initial_name, initial_strength)
    @name = initial_name
    @strength = initial_strength
    @hp = 100
  end

  def take_damage(damage_amt)
    if damage_amt.to_i >= 0
      @hp -= damage_amt
       if @hp < 0
         @hp = 0
      else
        @hp = hp
      end
    else
      false
    end
  end

  def attack(opponent)
    opponent.take_damage(self.strength)
  end

  def alive?
    hp > 0
  end

end
