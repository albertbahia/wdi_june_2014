require 'active_record'

ActiveRecord::Base.establish_connection({
    database: 'pokemon_db',
    adapter: 'postgresql'
    })
    
class Trainer < ActiveRecord:: Base
    
has_and_belongs_to_many :pokemons

#an instance method that will return the trainer's stats
    def whos_that_trainer
        return "ID #{id} | Name: #{name} | Hometown: #{hometown}" 
    end
    
#an instance method that will add pokemon objects to the trainer's pokemons array 
    def choose_pokemon(pokemon_array)
        pokemons << pokemon_array
    end
    
end
