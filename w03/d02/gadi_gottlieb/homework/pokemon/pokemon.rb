require 'active_record'

class Pokemon < ActiveRecord::Base
  has_and_belongs_to_many :trainers

# Can you use a .limit(6) method and randomize the 6 come in?

  def self.get_pokemon
    Pokemon.all.sample(6)
  end

  def whos_that_pokemon
    "Id: #{id},
    Name: #{name},
    Attack: #{attack},
    Defense: #{defense},
    Speed: #{speed}"
  end

  def total_attack
    (attack * 0.5) + (speed * 0.25) - (defense * 0.2)
  end

end

ActiveRecord::Base.establish_connection({
  adapter: 'postgresql',
  database: 'pokemon_db'
})
