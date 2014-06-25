require 'active_record'
require 'pry'

ActiveRecord::Base.establish_connection({
  adapter: 'postgresql',
  database: 'pokemon_db'
})

class Trainer < ActiveRecord::Base
	has_and_belongs_to_many :pokemons

	def whos_that_trainer
		return "#{id}, #{name}, #{age}, #{hometown}"
	end

	def choose_pokemon(pokes)
		pokes.each do |pokemon|
			pokemons.push(pokemon)
		end
	end

end
