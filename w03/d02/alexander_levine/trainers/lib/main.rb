require 'active_record'
require_relative 'trainer'
require_relative '../../pokemon/pokemon.rb'
require 'pry'

ActiveRecord::Base.establish_connection({
  adapter: 'postgresql',
  database: 'pokemon_db'
})

binding.pry
