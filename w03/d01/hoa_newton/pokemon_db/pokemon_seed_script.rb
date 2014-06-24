require 'pry'
require_relative 'pokemon_seed.rb'

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
	# pokes[:moves].each do |arr|
# binding.pry
	# arr.map do |hash|
	# hash_name =	hash[:name]
	# 	hash_name.join(', ')
	# end
	# arr.join(', ')
end
# binding.pry