require 'active_record'
require 'pry'

ActiveRecord::Base.establish_connection({
  adapter: 'postgresql',
  database: 'pokemon_db'
})

class Pokemon < ActiveRecord::Base
	has_and_belongs_to_many :trainers

	def self.get_pokemon
		Pokemon.all.sample(6)
	end

	def whos_that_pokemon
		"Id: #{id}\n
		Name: #{name}\n
		HP : #{hp} \n
		Attack: #{attack}\n
		Defense: #{defense}\n
		Speed: #{speed}"
	end

	def total_attack
		attack/2.0 + speed/4.0 - defense/5.0
	end

end
