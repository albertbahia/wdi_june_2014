

require_relative 'pokemon_seed.rb'
require_relative 'lib/pokemon.rb'

require 'active_record'
require 'pry'

ActiveRecord::Base.establish_connection({
  database: 'pokemon_db',
  adapter: 'postgresql'
  })


# class Pokemon < ActiveRecord::Base


pokerray.each do |pokerray|
  Pokemon.create(name: pokerray[:name])
end

pokerray.each do |pokerray|
  Pokemon.where(id: pokerray[:id])
end

#needs to be completed.  Spent my time trying to determine how to access the
#information within the pokarray

:hp
:attack
:defense
:speed
:moves
:image
:classification
:species
:height
:happiness




  end
# end

# binding.pry
