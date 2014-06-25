require 'active_record'

ActiveRecord::Base.establish_connection({
  database: 'pokemon_db',
  adapter: 'postgresql'
  })

class Pokemon < ActiveRecord::Base
  has_and_belongs_to_many :trainer

def self.get_pokemon
  Pokemon.all.sample[6]
end

def whos_that_pokemon
  "ID: #{id}, Name: #{name}, HP #{hp}, Attack: #{attack}, Defense: #{defense}, Speed: #{speed}"
end

def total_attack
  return (attack / 2) + (speed / 4) - (defense / 5)
end

end
