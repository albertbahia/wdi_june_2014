require_relative './pokemon'
ActiveRecord::Base.establish_connection({
  database: 'pokemon_db',
  adapter: 'postgresql'
  })

class Trainer < ActiveRecord::Base
  has_and_belongs_to_many :pokemons


  def whos_that_trainer
    "ID: #{id}, Name: #{name}, Age: #{age}, Hometown: #{hometown}"
  end

  def choose_pokemon
    trainer = Trainer.find(1)
    pokemons = Pokemon.find(1)
    trainer.pokemons << pokemon
  end



end
