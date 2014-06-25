require 'active_record'
require 'pry'
require_relative 'lib/pokemon.rb'
require_relative 'lib/trainer.rb'

ActiveRecord::Base.establish_connection({
  database: 'pokemon_db',
  adapter: 'postgresql'
})

def poke_battle(trainer1, trainer2)
  trainer1.pokemons = []
  trainer2.pokemons = []

  trainer1.choose_pokemon(Pokemon.get_pokemon)
  trainer2.choose_pokemon(Pokemon.get_pokemon)

  trainer1_wins = 0
  trainer2_wins = 0

  trainer1.pokemons.each_with_index do |pkmn, index|
    if pkmn.total_attack > trainer2.pokemons[index].total_attack
      puts "#{pkmn.name} defeated #{trainer2.pokemons[index].name}!"
      trainer1_wins += 1
    elsif pkmn.total_attack < trainer2.pokemons[index].total_attack
      puts "#{pkmn.name} lost to #{trainer2.pokemons[index].name}!"
      trainer2_wins += 1
    else
      puts "It was a tie!"
    end
  end
  puts ""
  if trainer1_wins > trainer2_wins
    puts "Trainer 1, #{trainer1.name}, wins!"
  elsif trainer1_wins < trainer2_wins
    puts "Trainer 2, #{trainer2.name}, wins!"
  else
    puts "It was a tie! Great match!"
  end
  puts ""

  trainer1.pokemons = []
  trainer2.pokemons = []
end

binding.pry
