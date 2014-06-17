class Human

attr_reader(:name, :house, :strength, :hp)

    def initialize(name, house, strength)
    @name = name
    @house = house
    @strength = strength
    @hp = 200
    end
    
    def introduce
        "My name is #{name.capitalize} of House #{house.capitalize}"
    end
    
    def take_damage(damage)
        if damage > 200
            @hp = 0
        elsif damage < 0
            @hp = hp
        else
            @hp = hp - damage
        end
    end
    
    def attack(victim)
        victim.take_damage(strength)
    end
    
    def alive?
         @hp > 0 ? true : false
    end
end
