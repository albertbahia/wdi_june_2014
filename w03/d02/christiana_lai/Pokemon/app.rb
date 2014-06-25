require 'active_record'
require 'pry'
require_relative 'pokemon.rb'
require_relative 'trainer.rb'

ActiveRecord::Base.establish_connection({
  adapter: 'postgresql',
  database: 'pokemon_db'
})

poke = Pokemon.find(1)
trainer = Trainer.find(1)

binding.pry
