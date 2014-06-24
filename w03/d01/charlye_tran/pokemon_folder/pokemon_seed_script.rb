require 'active_record'
require 'pry'
require_relative 'lib/pokemon.rb'
require_relative 'lib/pokemon_seed.rb'


ActiveRecord::Base.establish_connection({
  database: 'pokemon_db',
  adapter: 'postgresql'
})

poke_array = get_pokemon()

def pokemon_info(array)
  array.each do |hash|

    id = hash[:id].to_i
    name = hash[:name]
    hp = hash[:stats][:hp].to_i
    attack = hash[:stats][:attack]
    defense = hash[:stats][:attack]
    speed = hash[:stats][:speed].to_i
    moves = hash[:moves][:level].map { |x| x[:name] }.join(' ')
    image_url = hash[:img]
    classification = hash[:misc][:classification]
    species = hash[:type].join(' ')
    height = hash[:misc][:height]
    happiness = hash[:misc][:happiness].to_i

  Pokemon.create(
    id: id, name: name, hp: hp, attack: attack, defense: defense, speed: speed,
    moves: moves, image_url: image_url, classification: classification,
    species:species, height: height, happiness: happiness)

  end
end

pokemon_info(poke_array)

binding.pry
