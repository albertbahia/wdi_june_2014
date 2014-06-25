require 'active_record'


ActiveRecord::Base.establish_connection({
  database: 'pokemon_db',
  adapter: 'postgresql'
  })

class Trainer < ActiveRecord::Base
  has_and_belongs_to_many :pokemons

  def whos_that_trainer
    string = "Name: #{name} | Age: #{age} | Hometown: #{hometown}"
  end

  def choose_pokemon(pokemon_array)
    pokemons << pokemon_array
# - an instance method, `choose_pokemon` that will add pokemon objects to the trainer's pokemons array (it should take an array of pokemon as an argument).
  end



end
