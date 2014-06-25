require 'active_record'

class Pokemon < ActiveRecord::Base

  def self.get_pokemon
    rand_pokemon = [1, 2, 3, 4, 5, 6]
    rand_pokemon.each.map do |pokes|
      Pokemon.find_by(id: rand(151))
    end
  end

  def whos_that_pokemon(poke_select)
    poke_stats = Pokemon.find_by(id: poke_select)
    stat1 = poke_stats[:id]
    stat2 = poke_stats[:name]
    stat3 = poke_stats[:hp]
    stat4 = poke_stats[:attack]
    stat5 = poke_stats[:defense]
    stat6 = poke_stats[:speed]
    puts("id: #{stat1}\n name: #{stat2}\n hp: #{stat3}\n attack: #{stat4}\n defense: #{stat5}\n speed: #{stat6}")
  end

  def total_attack(poke_select)
    poke_stats = Pokemon.find_by(id: poke_select)
    poke_attack = poke_stats[:attack].to_i
    poke_defense = poke_stats[:defense].to_i
    poke_speed = poke_stats[:speed].to_i
    (poke_attack * 0.5) + (poke_speed * 0.25) - (poke_defense * 0.2)
  end

end

ActiveRecord::Base.establish_connection({
  adapter: 'postgresql',
  database: 'pokemon_db'
  })
