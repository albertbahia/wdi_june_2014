require 'pry'
require_relative './pokemon.rb'
require_relative './trainer.rb'

pokemon = [
  Pokemon.new("Pikachu", "#025", "Electric", 100, 40,50, 90),
  Pokemon.new("Venasaur", "#003", "Grass", 100, 40,50, 90),
  Pokemon.new("Charizard", "#006", "Fire", 50, 40,50, 90),
  Pokemon.new("Blastoise", "#009", "Water", 50, 40,50, 90),
  Pokemon.new("Jigglypuff", "#039", "Normal", 0, 40,50, 90),
  Pokemon.new("Mewtwo", "#150", "Psychic", 0, 40,50, 90),
  Pokemon.new("Mew", "#151", "Psychic", 100, 40,50, 90),
  Pokemon.new("Magikarp", "#129", "Water", 100, 40,50, 90)
]
ash = Trainer.new("Ash", 10, "NYC", pokemon[0,4])
team_rocket = Trainer.new("Team Rocket", 12, "Mt. Moon", pokemon[3,7])

def main_menu
  return ["Select 1 for pokedex","2 to Look at trainer info","9 to exit"]
end

def sub_menu
  return ["1 - Info on Ash", "2 - Info on Team Rocket"]
end

def battle_menu
  return ["Would you like to battle?!?! (y/n)"]
end

loop do
  puts main_menu
  choice = gets.chomp().to_i
  case choice
  when 1
    puts "THE POKEDEX!!!"
    puts pokedex(pokemon)
  when 2
    puts sub_menu
    sub_selection = gets.chomp().to_i
    if sub_selection == 1
      puts "battle with ash"
      puts trainer_info(ash)
      puts battle_menu
      battle_input = gets.chomp().to_s.downcase
      if battle_input == "y"
        puts "hi"
      else
        puts "bye"
      end
    elsif sub_selection == 2
      puts "battle with tr"
      puts trainer_info(team_rocket)
      puts battle_menu
      battle_input = gets.chomp().to_s.downcase
      if battle_input == "y"
        puts "hi"
      else
        puts "bye"
      end
    end
  when 9
    puts "goodbye"
    exit
  end
end
# binding.pry
