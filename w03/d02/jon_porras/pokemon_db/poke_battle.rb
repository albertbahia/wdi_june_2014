require 'active_record'
require_relative 'pokemon_seed.rb'
require_relative 'pokemon.rb'
require_relative 'trainer.rb'

ActiveRecord::Base.establish_connection({
    database: 'pokemon_db',
    adapter: 'postgresql'
})

num = rand(6)+1
trainer1 = Trainer.find(num)
trainer1.pokemons = []

num = rand(6)+1
trainer2 = Trainer.find(num)
trainer2.pokemons = []

trainer1.choose_pokemon(Pokemon.get_pokemon)
trainer2.choose_pokemon(Pokemon.get_pokemon)


trainer1_high_score = trainer1.pokemons.map { |pokemon| pokemon.total_attack }.max
trainer2_high_score = trainer2.pokemons.map { |pokemon| pokemon.total_attack }.max

if trainer1_high_score > trainer2_high_score
  top = trainer1_high_score
    trainer1.pokemons.each do |pokemon|
      if pokemon.total_attack == top
        puts("Congratulations, #{pokemon.name} has triumphed!!!!!!!")
      end
    end
else
  top = trainer2_high_score
    trainer2.pokemons.each do |pokemon|
      if pokemon.total_attack == top
        puts("Congratulations, #{pokemon.name} has triumphed!!!!!!!")
      end
  end
end



# trainer2.pokemons.map {|pokemon| pokemon.total_attack}
