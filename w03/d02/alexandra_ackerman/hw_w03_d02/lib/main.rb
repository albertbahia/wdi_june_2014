require 'pry'
require_relative 'trainer.rb'
require_relative 'pokemon.rb'
require 'active_record'

ActiveRecord::Base.establish_connection({
  database: 'pokemon_db',
  adapter: 'postgresql'
  })

binding.pry
