class Pokemon < ActiveRecord::Base
  has_and_belongs_to_many :trainers

  def self.get_pokemon
    self.order("random()").limit(6)
  end

  def whos_that_pokemon
    string = "ID: #{id} | Name: #{name} | HP: #{hp} | Attack: #{attack} | Defense: #{defense} | Speed: #{speed}"
  end

  def total_attack
    return ((attack * 0.5) + (speed * 0.25) - (defense * 0.2))
    # - 1/2 the pokemons attack plus 1/4 the pokemons speed minus 1/5 the pokemons defense
  end

end
