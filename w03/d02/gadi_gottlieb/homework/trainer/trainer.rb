require 'active_record'

class Trainer < ActiveRecord::Base
  has_and_belongs_to_many :pokemons

  def whos_that_trainer
    "ID: #{id},
    Name: #{name},
    Age: #{age},
    Hometown: #{hometown}."
  end

# Was unsure how to properly tackle this method. Either a .map or .each to pass
# all pokemon possibilities so that trainer could choose a desired pokemon. 
  def choose_pokemon
    trainer = Trainer.find(1)
    trainer.pokemons << Pokemon.find(6)
  end

end

ActiveRecord::Base.establish_connection({
  adapter: 'postgresql',
  database: 'pokemon_db'
})
