require_relative 'pokemon.rb'
require_relative 'pokemon_seed.rb'

pokerray = get_pokemon()

pokerray.each do |pokemon_hash|
  Pokemon.create({
    name: pokemon_hash[:name],
    hp: pokemon_hash[:stats][:hp].to_i,
    attack: pokemon_hash[:stats][:attack].to_i,
    defense: pokemon_hash[:stats][:defense].to_i,
    moves: pokemon_hash[:moves][:level].map { |move| move[:name]}.join(", "),
    img: pokemon_hash[:img],
    speed: pokemon_hash[:stats][:speed].to_i,
    classification: pokemon_hash[:misc][:classification],
    species: pokemon_hash[:type].join(", "),
    height: pokemon_hash[:misc][:height].to_i,
    happiness: pokemon_hash[:misc][:happiness].to_i
    })
end
