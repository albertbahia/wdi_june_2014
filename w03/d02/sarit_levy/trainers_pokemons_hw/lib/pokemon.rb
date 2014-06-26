require 'active_record'

class Pokemon < ActiveRecord::Base

  has_and_belongs_to_many :trainers


#yet to do:
# Define the following methods in your Pokemon class
# - a class method `get_pokemon`, similar to the `.where` and `.all` methods, that will select 6 random pokemon from the database and return them in an array
#   - [Link Love - Class v Instance Methods](http://www.railstips.org/blog/archives/2009/05/11/class-and-instance-methods-in-ruby/)
# - an instance method, `whos_that_pokemon` that will return a string listing the id, name, hp, attack, defense, and speed of a pokemon object


  def get_pokemon
    #similar to the `.where` and `.all` methods, that will select 6 random pokemon
        #from the database and return them in an array
  end

  def whos_that_pokemon
    #return a string listing the id, name, hp, attack, defense, and speed of a pokemon object
  end

  ## - an instance method `total_attack` that will return the result of the following maths:
  #   - 1/2 the pokemons attack plus 1/4 the pokemons speed minus 1/5 the pokemons defense
  def total_attack
    half_attack = attack / 2
    quarter_speed = speed / 4
    fifth_defense = defense / 5
    half_attack + quarter_speed - fifth_defense
  end

end
