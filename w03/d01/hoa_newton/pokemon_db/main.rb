require 'active_record'
require 'pry'
require_relative 'pokemon_seed.rb'
require_relative 'pokemons.rb'
require_relative 'pokemon_seed_script.rb'
# require_relative 'pokemons_schema.sql'

ActiveRecord::Base.establish_connection({
	database: 'pokemon_db',
	adapter: 'postgresql'
	})

pokes = get_pokemon

def get_moves(moves_hash)
	result = ''
	moves_hash.each do |key, value|
		value.each do |move_hash|
			result += "#{move_hash[:name]} "
		end
	end
	return result
end

pokes.each do |poke_hash|
	moves = get_moves(poke_hash[:moves]) 
end

pokes.each do |poke|
	Pokemon.create({
		name: poke[:name],
		hp: poke[:stats][:hp].to_i,
		attack: poke[:stats][:attack].to_i,
		defense: poke[:stats][:defense].to_i,
		speed: poke[:stats][:speed].to_i,
		moves: get_moves(poke[:moves]),
		image_url: poke[:img],
		classification: poke[:misc][:classification],
		species: poke[:type].join(', '),
		height: poke[:misc][:height].to_i,
		happiness: poke[:misc][:happiness].to_i
	})
end


 binding.pry

