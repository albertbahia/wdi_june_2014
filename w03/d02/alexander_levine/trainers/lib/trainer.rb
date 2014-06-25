require 'active_record'

class Trainer < ActiveRecord::Base
  has_and_belongs_to_many :pokemons

  def whos_that_trainer
    info = "ID: #{id}\n"
    info += "Name: #{name}\n"
    info += "Age: #{age}\n"
    info += "Hometown: #{hometown}\n"
  end

  def choose_pokemon(poke_array)
    self.pokemons = poke_array
  end

end
