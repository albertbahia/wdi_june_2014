require 'active_record'
require 'pry'
require_relative 'pokemon_seed.rb'
require_relative 'pokemon.rb'

ActiveRecord::Base.establish_connection({
    database: 'pokemon_db',
    adapter: 'postgresql'
})

binding.pry
