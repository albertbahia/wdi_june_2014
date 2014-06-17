require 'pry'

require_relative './pokemon.rb'
require_relative './trainer.rb'
require_relative './nurse.rb'

pokemon = [
  Pokemon.new("Bulbasaur", 1, "Grass", 45, 49, 49, 45),
  Pokemon.new("Charmander", 4, "Fire", 50, 52, 43, 65),
  Pokemon.new("Squirtle", 7, "Water", 50, 48, 65, 43),
  Pokemon.new("Caterpie", 10, "Bug", 0, 30, 35, 45),
  Pokemon.new("Weedle", 13, "Bug", 0, 35, 30, 50),
  Pokemon.new("Pidgey", 16, "Normal", 40, 45, 40, 56),
  Pokemon.new("Rattata", 19, "Normal", 30, 56, 35, 72),
  Pokemon.new("Spearow", 21, "Normal", 40, 60, 30, 70),
]

trainer = Trainer.new("Ash Ketchum", 10, "Pallet Town", pokemon[0,4])


nurse = Nurse.new("Joy", 18, "Viridian City")

def menu
  return ["Welcome to PokéArena!", "Choose 1 to View the Pokémon", "Choose 2 to View Our Best Trainer", "Choose 3 to Get Aid from Our Nurse"]
end

def prompt
  print '> '
end

def list_info
  info_string = "Pokemon: #{name},"
  info_string += "Id: #{id},"
  info_String += "Type: #{type},"
  info_string += "HP: #{hp},"
  info_string += "Attack: #{attack},"
  info_string += "Defense: #{defense},"
  info_string += "Speed: #{speed}"
end

def list_pokemon
  list_pokemon = pokemon.map { |pokemon| pokemon.list_info }
  list_pokemon.join("\n")
end

loop do
  puts menu
  prompt
  choice = gets.chomp().to_i
  case choice
  when 1
    puts pokemon.list_pokemon
    puts "Which Pokémon are you concerned with?"
    prompt
    pokemon_choice = gets.chomp().to_i
    puts "Choose 1 to restore HP", "Choose 2 to damage the Pokémon", "Choose 3 to see the status of the Pokémon"
      second_choice = gets.chomp
      if second_choice == 1
        hp = pokemon_choice(hp)
        pokemon_choice.calculate_hp(hp, final_hp)
        puts "Your pokemon is fully restored!"
      elsif second_choice == 2
        puts "How much damage is the Pokémon taking?"
        amount_of_damage = gets.chomp
        hp = pokemon_choice(hp)
        final_hp = pokemon_choice.take_damage(hp, amount_of_damage)
        if final_hp >= 0
          puts "Your Pokémon now has #{pokemon_choice.take_damage(hp, amount_of_damage)} hp"
        elsif final_hp < 0
          puts "Choose a valid amount of damage"
        end
      else second_choice == 3
      break
      end
    end
end
