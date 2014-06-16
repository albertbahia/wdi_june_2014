class Pokemon

    attr_reader(:name, :id, :poketype, :hp, :attack, :defense, :speed)

    def initialize(name, id, poketype, hp, attack, defense, speed)
        @name = name
        @id = id
        @poketype = poketype
        @hp = hp
        @attack = attack
        @defense = defense
        @speed = speed
    end  

    def list_stats()
        stats = "Name: #{name.capitalize}\n"
        stats += "Poke ID: #{id}\n"
        stats += "Type: #{poketype.capitalize}\n" 
        stats  += "HP: #{hp}\n"
    end
    
    def hp_full_restore()
        
    end
    
    def lose_hp
    end
    
    def give_status
        if hp > 0
            puts "Still kickin'!"
        else 
            puts "Pokemon K.O.'d! =( "
    end
    
end    
