class Trainer

    attr_reader(:name, :age, :hometown, :pokemon)

    def initialize(name, age, hometown, pokemon)
        @name = name
        @age = age
        @hometown = hometown
        @pokemon = pokemon
    end  
    
end
