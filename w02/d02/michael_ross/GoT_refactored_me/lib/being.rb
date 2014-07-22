class Being

  attr_reader(:name, :strength, :rb)
  def initialize(name, strength)
    @name = name
    @strength = name
    @hp = 100

  end

    def hp
      @hp
    end

    def take_damage(damage_amount)
      if damage_amount >= 0
        @hp -= damage_amount
        if @hp < 0
          @hp = 0
        else
          @hp = @hp
        end
      end
    end

    def attack(victim)
      victim.take_damage(@strength)
    end

    def alive?
      @hp > 0
    end

end
