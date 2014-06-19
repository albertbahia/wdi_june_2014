require_relative('./human.rb') 
require_relative('./king.rb') 

class Knight < Human

attr_reader(:sword_name, :king_name)

    def initialize(name, house, sword_name)
        super(name, house, hp)
        @sword_name = sword_name
        @strength = 50
        @hp = 500
        @king_name = nil
    end
    
    def pledge_loyalty(king)
        if king.class == King
            @king_name = king.name
            return true
        else
            return false
        end
    end
    
    def introduce  
        super + ", and I am an honorable knight loyal to #{king_name}"
    end
    
end
