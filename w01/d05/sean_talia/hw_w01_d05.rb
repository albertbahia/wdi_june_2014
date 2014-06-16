require_relative './nurse.rb'
require 'pry'

bulbasaur = Pokemon.new("Bulbasaur", "001", "Grass/Poison", 10, 5, 10, 5)
ivysaur = Pokemon.new("Ivysaur", "002", "Grass/Poison", 25, 15, 25, 10)
venusaur = Pokemon.new("Venusaur", "003", "Grass/Poison", 60, 40, 50, 15)
charmander = Pokemon.new("Charmander", "004", "Fire", 10, 10, 5, 5)
charmeleon = Pokemon.new("Charmeleon", "005", "Fire", 25, 25, 15, 10)
charizard = Pokemon.new("Charizard", "006", "Fire", 60, 50, 40, 15)
squirtle = Pokemon.new("Squirtle", "007", "Water", 10, 5, 5, 10)
wartortle = Pokemon.new("Wartortle", "008", "Water", 25, 15, 20, 15)
blastoise = Pokemon.new("Blastoise", "009", "Water", 60, 40, 40, 20)

ivysaur.take_med_damage()
charizard.take_big_damage()
blastoise.take_big_damage()

pokemon_list = [bulbasaur, charmander, squirtle, ivysaur, charizard, blastoise]

ash = Trainer.new("Ash", 18, "Pallet Town", pokemon_list)
cindy = Nurse.new("Cindy", 20, "Pewter Town")

ash.pokemons.each do |pokemon|
  puts "#{pokemon.name()}: #{pokemon.hp()}"
end

cindy.heal_pokemon_of(ash)

ash.pokemons.each do |pokemon|
  puts "#{pokemon.name()}: #{pokemon.hp()}"
end

#binding.pry
