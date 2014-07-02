require 'active_record'
require_relative 'pokemon'
ActiveRecord::Base.establish_connection({
  database: 'pokemon_db',
  adapter: 'postgresql'
  })

class Trainer < ActiveRecord::Base
  def whos_that_trainer
  end

  def self.choose_pokemon
    #Trainer.pokemons=Pokemon.get_pokemons
    Pokemon.get_pokemons
  end
end

Trainer.choose_pokemon
