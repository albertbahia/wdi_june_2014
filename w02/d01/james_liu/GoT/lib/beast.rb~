class Beast

attr_reader(:name, :species, :strength, :hp)

    def initialize(name, species, strength)
    @name = name
    @species = species
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
