require 'active_record'
require_relative './pokemon_seed.rb'
require_relative './pokemon.rb'

ActiveRecord::Base.establish_connection({
  database: 'pokemon_db',
  adapter: 'postgresql'
})

class Pokemon < ActiveRecord::Base
end

pokerray = get_pokemon
pokerray.each do |pokemon_hash|
    id = pokemon_hash[:id].to_i
    name = pokemon_hash[:name]
    hp = pokemon_hash[:stats][:hp].to_i
    attack = pokemon_hash[:stats][:attack].to_i
    defense = pokemon_hash[:stats][:defense].to_i
    speed = pokemon_hash[:stats][:speed].to_i
    moves_string = ""
      pokemon_hash[:moves].each do |catagory, arr|
      arr.each do |inner_hash|
         moves_string += inner_hash[:name]
      end
    end
    moves = moves_string
    img = pokemon_hash[:img]
    species = pokemon_hash[:type].join(", ")
    classification = pokemon_hash[:misc][:classification]
    height = pokemon_hash[:misc][:height].to_i
    happiness = pokemon_hash[:misc][:happiness].to_i

Pokemon.create({
      id: id,
      name: name,
      hp: hp,
      attack: attack,
      defense: defense,
      moves: moves,
      img: img,
      speed: speed,
      classification: classification,
      species: species,
      height: height,
      happiness: happiness
      })
end
