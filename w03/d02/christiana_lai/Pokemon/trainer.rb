require_relative 'pokemon.rb'

class Trainer < ActiveRecord::Base
  has_and_belongs_to_many :pokemons

  def whos_that_trainer
    "ID: #{self.id}, Name: #{self.name}, Age: #{self.age}, Hometown: #{self.hometown}"
  end

  def choose_pokemon(selected_pokemon)
    selected_pokemon.each { |pokemon| self.pokemons << pokemon } if self.pokemons.count < 6
  end

end
