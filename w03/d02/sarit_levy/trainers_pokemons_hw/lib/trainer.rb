require 'active_record'

class Trainer < Active_Record::Base

  has_and_belongs_to_many :pokemons

#yet to do:
# Define the following methods in your trainer class
# - an instance method, `whos_that_trainer` that will return the trainer's stats
# - an instance method, `choose_pokemon` that will add pokemon objects to the trainer's
#     pokemons array (it should take an array of pokemon as an argument).

  def whos_that_trainer
    #return the trainer's stats
  end

  def choose_pokemon
    #add pokemon objects to the trainer's pokemons array
  end

end
