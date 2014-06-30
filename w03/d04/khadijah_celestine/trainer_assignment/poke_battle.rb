require 'active_record'
require_relative 'pokemon'
require_relative 'trainer'

ActiveRecord::Base.establish_connection({
  adapter: 'postgresql',
  database: 'pokemon_db'
})

first_trainer = Trainer.all.sample
second_trainer = Trainer.all.sample

first_trainer.choose_pokemon(Pokemon.get_pokemon)
second_trainer.choose_pokemon(Pokemon.get_pokemon)

def battle(trainer_a,trainer_b)
  i = 0
  results = { trainer_a: 0, trainer_b: 0, battles: [] }
  while i < trainer_a.pokemons.count
    winner = trainer_a.pokemons[i].total_attack > trainer_b.pokemons[i].total_attack ? :trainer_a : :trainer_b
    case winner
    when :trainer_a
      results[:trainer_a] += 1
      results[:battles] << "#{trainer_a.name}'s #{trainer_a.pokemons[i].name} defeats #{trainer_b.name}'s #{trainer_b.pokemons[i].name}"
    when :trainer_b
      results[:trainer_b] += 1
      results[:battles] << "#{trainer_b.name}'s #{trainer_b.pokemons[i].name} defeats #{trainer_a.name}'s #{trainer_a.pokemons[i].name}"
    else
      results[:battles] << "In a startling turn of events the Pokemon decided to hug it out! #{trainer_a.pokemons[i].name} hugs #{trainer_b.pokemons[i].name}"
    end
    i+=1
  end
  return get_results(results,trainer_a,trainer_b) 
end

def get_results(result_hash,trainer_a,trainer_b)
  if result_hash[:trainer_a] > result_hash[:trainer_b]
    champion = "#{trainer_a.name} wins!" 
  elsif result_hash[:trainer_a] < result_hash[:trainer_b]
    champion = "#{trainer_b.name} wins!"
  else
    champion = "#{trainer_a.name} and #{trainer_b.name} hug it out in the shade!"
  end
  return result_hash[:battles].join("\n") + "\n#{champion}"
end

puts battle(first_trainer, second_trainer)