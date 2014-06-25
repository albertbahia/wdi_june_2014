#require active record
require 'active_record'
require 'pry'

ActiveRecord::Base.establish_connection({
  adapter: 'postgresql',
  database: 'pokemon_db'
})

#create pokemon class
class Pokemon < ActiveRecord::Base

  #declaring a many-to-many relationship
  has_and_belongs_to_many :trainers

  def self.get_pokemon
    #grabs six records and randomly orders them in an array
    Pokemon.limit(6).order("RANDOM()")

  end

  def whos_the_pokemon
    poke_info = "id: #{id},\n"
    poke_info += "name: #{name},\n"
    poke_info += "hp: #{hp},\n"
    poke_info += "defense: #{defense},\n"
    poke_info += "speed: #{speed},\n"
    puts name.capitalize
    puts "_____________"
    puts poke_info
  end

  def total_attack
    total_attack = (attack * 0.5) + (speed * 0.25) - (defense * 0.20)

  end

end
binding.pry
