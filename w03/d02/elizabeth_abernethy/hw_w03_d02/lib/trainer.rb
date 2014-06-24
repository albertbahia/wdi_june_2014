require 'active_record'

ActiveRecord::Base.establish_connection({
  database: 'pokemon_db',
  adapter: 'postgresql'
  })

class Trainer < ActiveRecord::Base
  has_and_belongs_to_many :pokemons

  def whos_that_trainer
    who_is_it = ("#{id} | #{name} | #{age} | #{hometown}")
  end

  def choose_pokemon(pokemon_array)
    # self.pokemons << Pokemon.find_by(name: pokemon)
    pokemon_array.each do |pokemon|
      self.pokemons << pokemon
    end
  end

end
