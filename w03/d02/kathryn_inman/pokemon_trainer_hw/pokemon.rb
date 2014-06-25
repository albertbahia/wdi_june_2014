class Pokemon < ActiveRecord::Base
  has_and_belongs_to_many :trainers

  def self.get_pokemon
    random_pokemons = []
    random_pokemons << Pokemon.limit(6).order("RANDOM()")
    return random_pokemons
  end

  def whos_that_pokemon
    pokemon_stat_list = "ID: #{id}, Name: #{name}, HP: #{hp}, Attack: #{attack}, Defense: #{defense}, Speed: #{speed}, Moves: #{moves}, Image URL: #{img}, Classification: #{classification}, Species: #{species}, Height: #{height}, Happiness: #{happiness}"
  end

  def total_attack
    attack_value = (attack * 0.5) + (speed * 0.25) - (defense * 0.2)
    return attack_value
  end

end
