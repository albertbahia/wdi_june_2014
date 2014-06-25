ActiveRecord::Base.establish_connection({
  database: 'pokemon_db',
  adapter: 'postgresql'
  })

class Trainer < ActiveRecord::Base
  has_and_belongs_to_many :pokemons

  def whos_that_trainer
    trainer_stat_list = "ID: #{id}, Name: #{name}, Age: #{age}, Hometown: #{hometown}"
  end

  def choose_pokemon(pokemon_array)
    self.pokemons << pokemon_array
  end

end
