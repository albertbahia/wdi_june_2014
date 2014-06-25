require_relative 'pokemon.rb'
require_relative 'pokemon_seed.rb'
require 'pry'

=begin
poke_hash[:name]
poke_hash[:img]
poke_hash[:stats][:hp]
poke_hash[:stats][:attack]
poke_hash[:stats][:defense]
poke_hash[:stats][:speed]
poke_hash[:type].join(' | ')
poke_hash[:moves][:level].map { |move| move[:name].capitalize }.join(' | ')
poke_hash[:misc][:classification]
poke_hash[:misc][:height]
poke_hash[:misc][:happiness]
=end

pokemon_array = get_pokemon()

pokemon_array.each do |poke_hash|
  Pokemon.create({
    name: poke_hash[:name],
    img_url: poke_hash[:img],
    hp: poke_hash[:stats][:hp].to_i,
    attack: poke_hash[:stats][:attack].to_i,
    defense: poke_hash[:stats][:defense].to_i,
    speed: poke_hash[:stats][:speed].to_i,
    species: poke_hash[:type].join(' | '),
    moves: poke_hash[:moves][:level].map { |move| move[:name].capitalize }.join(' | '),
    classification: poke_hash[:misc][:classification],
    height: poke_hash[:misc][:height],
    happiness: poke_hash[:misc][:happiness].to_i
    })
end
