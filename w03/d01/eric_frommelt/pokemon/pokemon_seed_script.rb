require_relative 'pokemon.rb'
require_relative 'pokemon_seed.rb'
require 'pry'

my_pokemon = get_pokemon()

my_pokemon.each do |pokemon_hash|
  Pokemon.create({
    name: pokemon_hash[:name],
    img_url: pokemon_hash[:img],
    hp: pokemon_hash[:stats][:hp].to_i,
    attack: pokemon_hash[:stats][:attack].to_i,
    defense: pokemon_hash[:stats][:defense].to_i,
    speed: pokemon_hash[:stats][:speed].to_i,
    moves: pokemon_hash[:moves][:level].map { |move| move[:name].capitalize }.join(', '),
    classification: pokemon_hash[:misc][:classification],
    species: pokemon_hash[:type].join(', '),
    height: pokemon_hash[:height],
    happiness: pokemon_hash[:misc][:happiness].to_i
  })
end

binding.pry
