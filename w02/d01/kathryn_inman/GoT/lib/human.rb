class Human

    attr_reader(:name, :house, :strength)
    def initialize(name, house, strength)
      @name = name
      @house = house
      @strength = strength
      @hp = 200
    end

    def hp
      @hp
    end

    def introduce
      "Greetings, I am #{name.capitalize}, of House #{house.capitalize}."
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

end #End Class
