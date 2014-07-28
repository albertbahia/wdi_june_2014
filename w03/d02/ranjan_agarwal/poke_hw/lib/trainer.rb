require_relative('./pokemon.rb')
class Trainer < ActiveRecord::Base
  has_and_belongs_to_many :pokemon
  def whos_that_trainer
    "ID: #{id} Name: #{name} Ages: #{age} Hometown: #{hometown}."
  end

  def choose_pokemon
    selected_pokemon.each { |pokemon| self.pokemons << pokemon } if self.pokemons.count < 6
  end
end
