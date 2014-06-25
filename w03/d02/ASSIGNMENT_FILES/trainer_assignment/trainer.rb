class Trainer < ActiveRecord::Base
  has_and_belongs_to_many :pokemons

  def choose_pokemon(selected_pokemon)
    selected_pokemon.each { |pokemon| self.pokemons << pokemon } if self.pokemons.count < 6
  end

  def whos_that_trainer
    return "#{self.name} | #{self.age} from #{self.hometown}"
  end

end