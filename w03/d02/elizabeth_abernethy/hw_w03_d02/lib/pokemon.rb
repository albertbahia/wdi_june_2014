require 'active_record'

ActiveRecord::Base.establish_connection({
  adapter: 'postgresql',
  database: 'pokemon_db'
})

class Pokemon < ActiveRecord::Base
  has_and_belongs_to_many :trainers

  def self.get_pokemon
    Pokemon.all.sample(6)
  end

  def whos_that_pokemon
    who_is_it = ("#{id} | #{name} | #{hp} | #{attack} | #{defense} | #{speed}")
  end

  def total_attack
    new_stats = ((attack * 0.5) + (speed * 0.25) - (defense * 0.2))
  end

end
