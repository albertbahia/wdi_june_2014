require 'active_record'
require_relative 'pokemon'
require_relative '../trainers/lib/trainer'
require 'pry'

ActiveRecord::Base.establish_connection({
  adapter: 'postgresql',
  database: 'pokemon_db'
})

trainer1 = Trainer.all.sample
trainer2 = Trainer.all.sample

trainer1.choose_pokemon(Pokemon.all.sample(6))
trainer2.choose_pokemon(Pokemon.all.sample(6))



def fight(trainer1, trainer2)
  trainer1_score = 0
  trainer2_score = 0
  if trainer1.pokemons[0].total_attack > trainer2.pokemons[0].total_attack
    puts "#{trainer1[:name]}'s #{trainer1.pokemons[0].name} wins!"
    trainer1_score += 1
  else
    puts "#{trainer2[:name]}'s #{trainer2.pokemons[0].name} wins!"
    trainer2_score += 1
  end
  if trainer1.pokemons[1].total_attack > trainer2.pokemons[1].total_attack
    puts "#{trainer1[:name]}'s #{trainer1.pokemons[1].name} wins!"
    trainer1_score += 1
  else
    puts "#{trainer2[:name]}'s #{trainer2.pokemons[1].name} wins!"
    trainer2_score += 1
  end
  if trainer1.pokemons[2].total_attack > trainer2.pokemons[2].total_attack
    puts "#{trainer1[:name]}'s #{trainer1.pokemons[2].name} wins!"
    trainer1_score += 1
  else
    puts "#{trainer2[:name]}'s #{trainer2.pokemons[2].name} wins!"
    trainer2_score += 1
  end
  if trainer1.pokemons[3].total_attack > trainer2.pokemons[3].total_attack
    puts "#{trainer1[:name]}'s #{trainer1.pokemons[3].name} wins!"
    trainer1_score += 1
  else
    puts "#{trainer2[:name]}'s #{trainer2.pokemons[3].name} wins!"
    trainer2_score += 1
  end
  if trainer1.pokemons[4].total_attack > trainer2.pokemons[4].total_attack
    puts "#{trainer1[:name]}'s #{trainer1.pokemons[4].name} wins!"
    trainer1_score += 1
  else
    puts "#{trainer2[:name]}'s #{trainer2.pokemons[4].name} wins!"
    trainer2_score += 1
  end
  if trainer1.pokemons[5].total_attack > trainer2.pokemons[5].total_attack
    puts "#{trainer1[:name]}'s #{trainer1.pokemons[5].name} wins!"
    trainer1_score += 1
  else
    puts "#{trainer2[:name]}'s #{trainer2.pokemons[5].name} wins!"
    trainer2_score += 1
  end
  if trainer1_score > trainer2_score
    puts "#{trainer1[:name]} wins #{trainer1_score} to #{trainer2_score}"
  elsif trainer1_score < trainer2_score
    puts "#{trainer2[:name]} wins #{trainer2_score} to #{trainer1_score}"
  else
    puts "#{trainer1[:name]} and #{trainer2[:name]}
    tie #{trainer1_score} to #{trainer2_score}"
  end
end


binding.pry
