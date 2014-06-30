require 'active_record'
require 'pry'
require_relative './trainer.rb'

# ActiveRecord::Base.establish_connection({
#   adapter: 'postgresql',
#   # host: 'localhost'
#   # username: 'macadocious',
#   database: 'pokemon_db'
#   })


class Pokemon < ActiveRecord::Base

  # has_and_belongs_to_many :trainers

  def self.get_pokemon
    Pokemon.order("RANDOM()").limit(6)
  end

  def whos_that_pokemon
    return "Name: #{name}, HP: #{hp}, Attack: #{attack}, Defense: #{defense}, Speed: #{speed}"
    # Pokemon.select("name, hp, attack, defense, speed")
  end

  def total_attack
    return ((attack * 0.5) + (speed * 0.25) - (defense * 0.2))
  end


end
# binding.pry
