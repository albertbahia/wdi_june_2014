require 'active_record'

ActiveRecord::Base.establish_connection({
  adapter: 'postgresql',
  # host: 'localhost'
  # username: 'macadocious',
  database: 'pokemon_db'
  })


class Trainer < ActiveRecord::Base

  has_and_belongs_to_many :pokemons

  def whos_that_trainer
    return "Name: #{name}, Age: #{age}, Hometown: #{hometown}"
  end

  def choose_pokemon(pokemon_array)
    pokemons << pokemon_array
    # Must load array into pokemons table
  end

  def self.get_trainer
    Trainer.order("RANDOM()").limit(1)
  end

end
