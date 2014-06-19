class Being

attr_reader(:name, :strength, :hp)

    def initialize(name, strength)
        @name = name
        @strength = strength
        @hp = 100
    end 
        
    def take_damage(damage)
        if damage > 100
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
