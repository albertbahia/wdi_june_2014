require 'pry'
require_relative './pokemon.rb'
require_relative './trainer.rb'
require_relative './nurse.rb'

pokemon = [
  Pokemon.new("Pikachu", "#025", "Electric", 100, 40,50, 90),
  Pokemon.new("Venasaur", "#003", "Grass", 100, 40,50, 90),
  Pokemon.new("Charizard", "#006", "Fire", 50, 40,50, 90),
  Pokemon.new("Blastoise", "#009", "Water", 50, 40,50, 90),
  Pokemon.new("Mewtwo", "#150", "Psychic", 0, 40,50, 90),
  Pokemon.new("Mew", "#151", "Psychic", 100, 40,50, 90),
  Pokemon.new("Jigglypuff", "#039", "Normal", 0, 40,50, 90),
  Pokemon.new("Magikarp", "#129", "Water", 100, 40,50, 90),
  Pokemon.new("Meowth", "#052", "Normal", 100, 40,50, 90),
  Pokemon.new("Alakazam", "#065", "Psychic", 100, 40,50, 90),
  Pokemon.new("Hitmonchan", "#107", "Fighting", 100, 40,50, 90)
]

ash = Trainer.new("Ash", 10, "NYC", pokemon[0..4])
team_rocket = Trainer.new("Team Rocket", 12, "Mt. Moon", pokemon[5..9])

nurse_joy = Nurse.new("Nurse Joy", 11, "Pallet Town")

def main_menu
  return ["Select 1 for Pokedex","Select 2 to Look at trainer info","Select 3 to heal pokemon","Select 9 to exit"]
end

def sub_menu
  return ["1 - Info on Ash", "2 - Info on Team Rocket"]
end

def battle_menu
  return ["Would you like to battle?!?! (Y/N)"]
end

def nurse_menu
  return ["Would you like to heal your Pokemon? (Y/N)"]
end

def the_battle

end

def heal_pokemon
  nurse_input = gets.chomp().to_s.downcase
  if nurse_input == "y"
    puts "hi "
  else
    puts "I bet Brock would like to heal his Pokemon."
  end
end

loop do
  puts "GOTTA CATCH EM ALLLL!!! POKEMON!!!"
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
      puts "Info:"
      puts trainer_info(ash)
      puts battle_menu
      battle_input = gets.chomp().to_s.downcase
      if battle_input == "y"
        puts trainer_info(ash)
        puts "Versus"
        puts " "
        puts trainer_info(team_rocket)
      else
        puts "bye"
      end
    elsif sub_selection == 2
      puts "Info:"
      puts trainer_info(team_rocket)
      puts battle_menu
      battle_input = gets.chomp().to_s.downcase
      if battle_input == "y"
        puts trainer_info(team_rocket)
        puts "Versus"
        puts " "
        puts trainer_info(ash)
      else
        puts "bye"
      end
    end
  when 3
    puts nurse_info(nurse_joy)
    puts "What would you like to do today?"
    puts nurse_menu
    puts heal_pokemon
  when 9
    puts "Hope to see you again!!!"
    exit
  end
end
# binding.pry
