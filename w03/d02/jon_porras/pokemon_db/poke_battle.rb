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

trainer1.pokemons.map {|pokemon| pokemon.total_attack}
trainer2.pokemons.map {|pokemon| pokemon.total_attack}


##
