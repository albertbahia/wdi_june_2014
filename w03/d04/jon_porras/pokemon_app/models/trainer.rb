class Trainer < ActiveRecord::Base
  has_and_belongs_to_many :pokemons

  def whos_that_trainer
    puts id, name, age, hometown
  end

  def choose_pokemon(arr)
    pokemons << arr
  end
end
