require 'active_record'

class Pokemon < ActiveRecord:: Base

has_and_belongs_to_many :trainers

#Returns first 6 Pokemon
  def self.get_pokemon
    Pokemon.all.sample(6)
  end

#An instance method that will return a string listing the id, name, hp, attack, defense, and speed of a pokemon object
  def whos_that_pokemon
    return "ID #{id} | Name: #{name} | HP: #{hp} | Attack: #{attack}, Defense: #{defense} | Speed: #{speed}"
  end

 #an instance method `total_attack` that will return the result of 1/2 the pokemons attack plus 1/4 the pokemons speed minus 1/5 the pokemons defense
 def total_attack()
    (0.5 * attack) + (0.25 * speed) - (0.2 * defense) 
 end
end
