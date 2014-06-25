require_relative 'trainer/trainer'
require_relative 'pokemon/pokemon'
require 'active_record'
require 'pry'

ActiveRecord::Base.establish_connection({
  adapter: 'postgresql',
  database: 'pokemon_db'
  })

binding.pry
