require 'active_record'

ActiveRecord::Base.establish_connection({
  adapter: 'postgresql',
  database: 'pokemon_db'
  })

class Pokemon < ActiveRecord::Base
  has_and_belongs_to_many :trainers

  def self.get_pokemon
    poke_array = []
      6.times do
        num = rand(150)+1
        poke_array.push(Pokemon.find(num))
      end
     return poke_array
  end

  def whos_that_pokemon
    puts id, name, hp, attack, defense, speed
  end

  def total_attack
    return (attack * 0.5) + (speed * 0.25) - (defense * 0.2)
  end
end
