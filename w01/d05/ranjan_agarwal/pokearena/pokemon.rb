require 'pry'

class Pokemon
  attr_reader(:poke_name, :id, :poketype, :hp, :defense, :attack, :speed)
  def initialize(poke_name,id,poketype,hp,defense, attack, speed)
    @poke_name = poke_name
    @id        = id
    @poketype  = poketype
    @hp        = hp
    @defense   = defense
    @attack    = attack
    @speed     = speed
  end



  # def the_pokemon()
  #   # poke_info = pokemon.map {|pokemon| pokemon.pokemon_info}
  #   list_of_pokemon.each do |pokemon|
  #     puts "#{pokemon.poke_name}"
  #   end
  # end

  def fight(hp)
    hp - rand(20)
  end



end

def pokedex(trainer_pokemon)
  trainer_pokemon.each do |pokemon|
    puts "=" * 50
    puts "Name: #{pokemon.poke_name}"
    puts "ID: #{pokemon.id}"
    puts "Poketype: #{pokemon.poketype}"
    puts "HP: #{pokemon.hp}"
    puts "Defense: #{pokemon.defense}"
    puts "Attack: #{pokemon.attack}"
    puts "Speed: #{pokemon.speed}"
    puts "=" * 50
  end
end

#
# puts Pokemon.pokemon_info



# pikachu    = Pokemon.new("Pikachu", "#025", "Electric", 100, "40","50", "90")
# venasaur   = Pokemon.new("Venasaur", "#003", "Grass", 100, "40","50", "90")
# charizard  = Pokemon.new("Charizard", "#006", "Fire", 50, "40","50", "90")
# blastoise  = Pokemon.new("Blastoise", "#009", "Water", 50, "40","50", "90")
# jigglypuff = Pokemon.new("Jigglypuff", "#039", "Normal", 0, "40","50", "90")
# mewtwo     = Pokemon.new("Mewtwo", "#150", "Psychic", 0, "40","50", "90")
# mew        = Pokemon.new("Mew", "#151", "Psychic", 100, "40","50", "90")
# magikarp   = Pokemon.new("Magikarp", "#129", "Water", 100, "40","50", "90")
# binding.pry
