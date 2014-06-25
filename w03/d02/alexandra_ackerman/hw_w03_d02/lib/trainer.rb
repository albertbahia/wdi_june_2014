require 'active_record'

class Trainer < ActiveRecord::Base
  has_and_belongs_to_many :pokemons

ActiveRecord::Base.establish_connection({
  database: 'pokemon_db',
  adapter: 'postgresql'
  })

  def whos_that_trainer
    who_it_is = ("ID: #{id} Name: #{name} Hometown: #{hometown}")
  end

  def choose_pokemon(pokemon)
    self.pokemons << pokemon
  end

  # def choose_pokemon(pokemon)
  #   self.pokemons << Pokemon.find_by(name: pokemon)
  # end

end
