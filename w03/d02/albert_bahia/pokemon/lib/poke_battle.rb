require 'active_record'
require './lib/pokemon.rb'
require './lib/trainer.rb'
require 'pry'

trainer_1 = Trainer.find(1)
pokemon_team_1 = Pokemon.get_pokemon
trainer_1.choose_pokemon(pokemon_team_1)

trainer_2 = Trainer.find(2)
pokemon_team_2 = Pokemon.get_pokemon
trainer_2.choose_pokemon(pokemon_team_2)

# ---Battle Begins!-------------
p1_attack = trainer_1.pokemons[0].total_attack
p2_attack = trainer_2.pokemons[0].total_attack

def pokemon_battle(pokemon1_attack, pokemon2_attack)
  if pokemon1_attack > pokemon2_attack
    "#{pokemon1_attack.name} won the battle!"
  else
    "#{pokemon2_attack.name} won the battle!"
  end
end

pokemon_battle(p1_attack, p2_attack)

binding.pry
