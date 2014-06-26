require_relative 'pokemon_seed.rb'
require_relative 'pokemon.rb'
require 'pry'  #set 'require 'pry'' after we complete our pokemon_array below

=begin  -working through obtaining attribute info for first pokemon to determine
if it works, then work on accessing all of them:

poke_hash[:name]
poke_hash[:image]
poke_hash[:stats][:hp]
poke_hash[:stats][:attack]
poke_hash[:stats][:defense]
poke_hash[:stats][:speed]

poke_hash[:type].join(' | ')

poke_hash[:moves][:level].map { |move| move[:name].capitalize}.join( ' | ')
poke_hash[:misc][:classification]
poke_hash[:misc][:height]
poke_hash[:misc][:happiness]

=end

pokemon_array = get_pokemon()  #this is retrieving the get_pokemon pokerray defined in the seed file, i.e., all the info in the seed we are requesting

pokemon_array.each do |poke_hash|
  Pokemon.create({  #curly braces are not a must to contain this information here and below following data
    name: poke_hash[:name],
    image: poke_hash[:img],
    hp: poke_hash[:stats][:hp].to_i,
    attack: poke_hash[:stats][:attack].to_i,
    defense: poke_hash[:stats][:defense].to_i,
    speed: poke_hash[:stats][:speed].to_i,
    species: poke_hash[:type].join(' | '),
    moves: poke_hash[:moves][:level].map { |move| move[:name].capitalize}.join( ' | '),
    classifiction: poke_hash[:misc][:classification],
    height: poke_hash[:misc][:height],
    happiness: poke_hash[:misc][:happiness].to_i
    })
end

binding.pry
