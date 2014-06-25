require 'active_record'
require_relative 'trainer.rb'
# require_relative 'poke_battle.rb'

class Pokemon < ActiveRecord::Base
  has_and_belongs_to_many :trainer

  def self.get_pokemon
    i = 0
    poke_arrs = []
    while i < 6 do
      x = rand(1..151)
      poke_arrs << Pokemon.find(x).name
      i+=1
    end
    return poke_arrs
  end

  def whos_that_pokemon
    poke_info = "ID: #{self.id} |"
    poke_info += "Name: #{self.name} |"
    poke_info += "HP: #{self.hp} |"
    poke_info += "Attack: #{self.attack} |"
    poke_info += "Defense: #{self.defense} |"
    poke_info += "Speed: #{self.speed} |"
    return poke_info
  end

  def total_attack
    return ((1.to_f/2 * self.attack.to_i) + (1.to_f/4 * self.speed.to_i)) - (1.to_f/5  * self.defense)
  end
end

ActiveRecord::Base.establish_connection ({
  database: 'pokemon_db',
  adapter: 'postgresql'
  })
