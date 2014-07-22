require_relative 'pokemon_seed'
require_relative 'pokemon'
require 'pry'

# ActiveRecord::Base.establish_connection({
#   database: 'pokemon_db',
#   adapter: 'postgresql'
# })

pokemon_list = get_pokemon()

pokemon_list.each do |pokemon_info|
  Pokemon.create({
    name: pokemon_info[:name],
    hp: pokemon_info[:stats][:hp].to_i,
    attack: pokemon_info[:stats][:attack].to_i,
    defense: pokemon_info[:stats][:defense].to_i,
    speed: pokemon_info[:stats][:speed].to_i,
    moves: pokemon_info[:moves][:level].map { |move| move[:name].capitalize }.join(" | "),
    img: pokemon_info[:img],
    classification: pokemon_info[:misc][:classification],
    species:  pokemon_info[:type].join(", "),
    height: pokemon_info[:misc][:height].to_i,
    happiness: pokemon_info[:misc][:happiness].to_i
    })
end

binding.pry

=begin
IN CLASS Solution

poke_hash[:name]
poke_hash[:img]
poke_hash[:stats][:hp]
poke_hash[:stats][:attack]
poke_hash[:stats][:defense]
poke_hash[:stats][:speed]

poke_hash[:type].join(" | ")

poke_hash[:moves][:level].map { |move| move[:name].capitalize }.join(" | ")
poke_hash[:misc][:classification]
poke_hash[:misc][:height]
poke_hash[:misc][:happiness]

=end

# pokemon_array = get_pokemon()
# pokemon_array.each do |poke_hash|
#   Pokemon.create({
#     name: poke_hash[:name],
#     img: poke_hash[:img],
#     hp: poke_hash[:stats][:hp].to_i
#     attack: poke_hash[:stats][:attack].to_i
#     defense: poke_hash[:stats][:defense].to_i
#     speed: poke_hash[:stats][:speed].to_i
#
#     species: poke_hash[:type].join(" | ")
#
#     moves: poke_hash[:moves][:level].map { |move| move[:name].capitalize }.join(" | ")
#     classification: poke_hash[:misc][:classification]
#     height: poke_hash[:misc][:height]
#     happiness: poke_hash[:misc][:happiness].to_i
#     })
