require_relative('./pokemon.rb')
class Trainer < ActiveRecord::Base
  has_and_belongs_to_many :pokemon
  def whos_that_trainer
    "ID: #{id} Name: #{name} Ages: #{age} Hometown: #{hometown}."
  end

  def choose_pokemon
    trainer = Trainer.find(1)
    poke = Pokemon.find(1)
    trainer.pokemon << poke
  end
end
