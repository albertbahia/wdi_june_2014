require 'active_record'
require 'pry'

class Trainer < ActiveRecord::Base

  has_and_belongs_to_many(:pokemons)

  def whos_that_trainer()
    return_string = "id: #{id} \n"
    return_string += "Name: #{name} \n"
    return_string += "Age: #{age} \n"
    return_string += "Hometown: #{hometown} \n"
  end

  def choose_pokemon(pokemon_array)
    pokemon_array.each { |pokemon_to_add| self.pokemons << pokemon_to_add}
  end

end
