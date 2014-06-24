require_relative './pokemon_seed.rb'
require 'pry'
require_relative './pokemon.rb'

pokemon = get_pokemon

pokemon.each do |pokemon|
  Pokemon.create({
    name: pokemon[:name],
    image: pokemon[:img],
    hp: pokemon[:stats][:hp].to_i,
    attack: pokemon[:stats][:attack].to_i,
    defense: pokemon[:stats][:defense].to_i,
    speed: pokemon[:stats][:speed].to_i,
    species: pokemon[:type].join(' | '),
    moves: pokemon[:moves][:level].map { |move| move[:name].capitalize}.join(' | '),
    image: pokemon[:img],
    classification: pokemon[:misc][:classification],
    height: pokemon[:misc][:height],
    happiness: pokemon[:misc][:happiness].to_i
    })

binding.pry


# ---------------------------- MY WORK
# def get_moves(moves_hash)
#   result = ''
#   moves_hash.each do |key,value|
#     value.each do |move_hash|
#       result += "#{move_hash[:name]}"
#     end
#       return result
#   end
# end
#
# pokemon.each do |pokemon|
#   moves = get_moves(poke_hash[:moves])
# end
#
#   pokemon.each do |pokemon|
#     Pokemon.create({
#       name: pokemon[:name],
#       hp: pokemon[:stats][:hp],
#       attack: pokemon[:stats][:attack],
#       defense: pokemon[:stats][:defense],
#       speed: pokemon[:stats][:speed],
#       moves: get_moves(pokemon[:moves]),
#       image: pokemon[:img],
#       classification: pokemon[:misc][:classification],
#       species: pokemon[:type].join(' | '),
#       height: pokemon[:misc][:height],
#       happiness: pokemon[:misc][:happiness]
#       })
#   end
