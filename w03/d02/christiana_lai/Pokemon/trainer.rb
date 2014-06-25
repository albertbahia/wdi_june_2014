require_relative 'pokemon.rb'

class Trainer < ActiveRecord::Base
  has_and_belongs_to_many :pokemons
  def whos_that_trainer
    "ID: #{id}, Name: #{name}, Age: #{age}, Hometown: #{hometown}"
  end

  def choose_pokemon
    poke = Pokemon.find(1)
    trainer = Trainer.find(1)
    trainer.pokemon << poke
  end
end
