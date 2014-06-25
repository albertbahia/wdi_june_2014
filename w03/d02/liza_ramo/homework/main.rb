require_relative 'lib/trainer.rb'
require_relative 'lib/pokemon.rb'
require 'pry'
require 'active_record'

ActiveRecord::Base.establish_connection({
    database: 'pokemon_db',
    adapter: 'postgresql'
})








binding.pry
