require 'active_record'
require 'pry'

ActiveRecord::Base.establish_connection({
  database: 'pokemon_db',
  adapter: 'postgresql'
})

require_relative 'lib/pokemon.rb'

binding.pry
