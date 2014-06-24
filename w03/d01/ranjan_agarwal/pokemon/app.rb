require 'active_record'
require 'pry'
require './pokemon_seed.rb'
require './pokemon.rb'


ActiveRecord::Base.establish_connection({
  database: 'pokemon_db',
  adapter: 'postgresql'
})


binding.pry
