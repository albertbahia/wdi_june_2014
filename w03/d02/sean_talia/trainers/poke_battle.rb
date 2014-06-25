require 'active_record'
require 'pry'
require_relative './lib/pokemon.rb'
require_relative './lib/trainer.rb'

ActiveRecord::Base.establish_connection({
  database: 'pokemon_db',
  adapter: 'postgresql'
  })

trainer_id_arr = (1..10).to_a.shuffle
trainer1 = Trainer.find(trainer_id_arr[0])
trainer2 = Trainer.find(trainer_id_arr[1])

poke_id_arr = (1..151).to_a.shuffle
first_six_pokemon = poke_id_arr[0..5].to_a.map { |id| Pokemon.find(id) }
second_six_pokemon = poke_id_arr[6..11].to_a.map { |id| Pokemon.find(id) }

trainer1.choose_pokemon(first_six_pokemon)
trainer2.choose_pokemon(second_six_pokemon)

binding.pry

def trainers_fight(first, second)
  matchups = first.pokemons.zip(second.pokemons)
  trainer1_wins = 0
  trainer2_wins = 0
  matchups.each do |poke1, poke2|
    if poke1.total_attack > poke2.total_attack
      trainer1_wins += 1
      puts "#{poke1.name} wins!"
    else
      trainer2_wins += 1
      puts "#{poke2.name} wins!"
    end
  end

  if trainer1_wins > trainer2_wins
    "#{trainer1.name} wins!!!"
  elsif trainer2_wins > trainer1_wins
    "#{trainer2.name} wins!!!"
  else
    "It's a draw!!!"
  end
end

puts trainers_fight(trainer1, trainer2)
