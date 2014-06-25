#require active record
require 'active_record'


ActiveRecord::Base.establish_connection({
  adapter: 'postgresql',
  database: 'pokemon_db'
})

#create trainer class
class Trainer < ActiveRecord::Base

  #declaring a many-to-many relationship
  has_and_belongs_to_many  :pokemons

  def whos_that_trainer
    trainer_info = "name: #{name},\n"
    trainer_info += "name: #{age},\n"
    trainer_info += "hp: #{hometown},\n"
    puts name.capitalize
    puts "_____________"
    puts trainer_info
  end

  def choose_pokemon(array_of_pokemons)
      array_of_pokemons.each do |pokemon|
      self.pokemons << pokemon
      end
  end
end
