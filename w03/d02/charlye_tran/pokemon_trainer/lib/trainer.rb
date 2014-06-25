require 'active_record'
require 'pokemon.rb'
require 'pry'

class Trainer < ActiveRecord::Base
  has_and_belongs_to_many :pokemons

  def whos_that_trainer
    return self
  end

  def choose_pokemon(pokemon)
    self.pokemons << pokemon
  end
end

ActiveRecord::Base.establish_connection({
  adapter: 'postgresql',
  database: 'pokemon_db'
})



binding.pry
