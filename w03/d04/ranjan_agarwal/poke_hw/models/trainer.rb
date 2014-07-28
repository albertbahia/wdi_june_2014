require_relative('./pokemon.rb')
class Trainer < ActiveRecord::Base
  has_and_belongs_to_many :pokemon
  def whos_that_trainer
    "ID: #{id} Name: #{name} Ages: #{age} Hometown: #{hometown}."
  end

  def choose_pokemon(selected_pokemon)
    if self.pokemon.count + selected_pokemon.count <= 6
      selected_pokemon.each { |pokemon| self.pokemon << pokemon }
    end
  end

  def has_pokemon?
    return self.pokemon.count > 0
  end
end
