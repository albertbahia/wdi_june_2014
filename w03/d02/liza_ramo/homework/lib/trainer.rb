require 'active_record'

ActiveRecord::Base.establish_connection({
  adapter: 'postgresql',
  database: 'pokemon_db'
})

class Trainer < ActiveRecord::Base
  has_and_belongs_to_many :pokemons


  def whos_that_trainer
    who_is_it = "id: #{id}, name: #{name}, age: #{age}, hometown: #{hometown}"
  end

# an instance method that will add pokemon objects to the trainer's pokemons array
# (it should take an array of pokemon as an argument).
# katy_perry.songs << kissed_girl



  def choose_pokemon(pokemon_array)
    pokemon_array.each do |pokemon|
      self.pokemons << pokemon
    end
  end


end

# my_trainer = Trainer.find(3)
# my_trainer.choose_pokemon
#
# my_trainer.pokemons
