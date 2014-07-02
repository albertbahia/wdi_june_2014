require_relative './pokemon/lib/pokemon.rb'
require_relative './pokemon/lib/pokemon_seed.rb'
require_relative './trainer/lib/trainer.rb'
require_relative './trainer/lib/trainer_seed.rb'
require 'pry'

ActiveRecord::Base.establish_connection({
  adapter: 'postgresql',
  database: 'pokemon_db'
})

trainer = Trainer.all.sample(2)
t1 = trainer.first
t2 = trainer.last

p1 = Pokemon.all.sample(6)
p2 = Pokemon.all.sample(6)

t1.pokemons = p1
t2.pokemons = p2

def fight(trainer1, trainer2)
	
end

binding.pry

