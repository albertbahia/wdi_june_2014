require 'active_record'

ActiveRecord::Base.establish_connection({
  adapter: 'postgresql',
  database: 'pokemon_db'
})


class Pokemon < ActiveRecord::Base
  has_and_belongs_to_many :trainers

# similar to the .where and .all methods, that will select 6 random pokemon
# from the database and return them in an array
  def self.get_pokemon
    Pokemon.all.sample(6)
  end

# Instance method
# Returns a string listing the id, name, hp, attack, defense
# and speed of a pokemon object
  def whos_that_pokemon
    who_is_it = "id: #{id}, name: #{name}, hp: #{hp}, attack: #{attack}, defense: #{defense}, speed #{speed}"
  end

# Instance method
# return the result of the following maths: - 1/2 the pokemons attack plus 1/4
# the pokemons speed minus 1/5 the pokemons defense
  def total_attack
    total_attack = (attack * 0.5) + (speed * 0.25) - (defense * 0.2)
  end

end
