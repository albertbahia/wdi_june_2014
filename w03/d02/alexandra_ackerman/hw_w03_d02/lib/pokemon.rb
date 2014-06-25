require 'active_record'

class Pokemon < ActiveRecord::Base
  has_and_belongs_to_many :trainers

  ActiveRecord::Base.establish_connection({
    database: 'pokemon_db',
    adapter: 'postgresql'
    })

  def self.get_pokemon
    random_pokemon = []
    random_pokemon << Pokemon.limit(6).order("RANDOM()")
    return random_pokemon
  end


  def whos_that_pokemon
    who_it_is =  ("ID: #{id} Name: #{name} HP: #{hp} Attack: #{attack} Defense: #{defense} Speed: #{speed}")
  end

  def total_attack
    total_attack = ((attack * 0.5) + (speed * 0.25)) - (defense * 0.2)
  end


end
