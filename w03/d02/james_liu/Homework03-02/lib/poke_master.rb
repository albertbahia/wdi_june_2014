require 'active_record'
require_relative 'pokemon.rb'
require_relative 'trainer.rb'
require 'pry'

class Trainer < ActiveRecord:: Base
end

ActiveRecord::Base.establish_connection({
    database: 'pokemon_db',
    adapter: 'postgresql'
    })

binding.pry
