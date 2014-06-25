require 'active_record'
require 'pry'
require_relative 'pokemon_seed.rb'

ActiveRecord::Base.establish_connection({
  database: 'pokemon_db',
  adapter: 'postgresql'
  })

new_poke_array = get_pokemon

new_poke_array.select do |hash|
  id = hash[:id].to_i
  name = hash[:name]
  img = hash[:img]
  type = hash[:type].join(" | ")
  hp = hash[:stats][:hp].to_i
  attack = hash[:stats][:attack].to_i
  defense = hash[:stats][:defense].to_i
  speed = hash[:stats][:speed].to_i
  moves = hash[:moves][:level].map {|level|
    level[:name] }.join(', ')

  classification = hash[:misc][:classification]
  height = hash[:misc][:height]
  happiness = hash[:misc][:happiness].to_i


  Pokemon.create ({
    id: id,
    name: name,
    img: img,
    species: type,
    hp: hp,
    attack: attack,
    defense: defense,
    speed: speed,
    moves: moves,
    classification: classification,
    height: height,
    happiness: happiness
    })


end

binding.pry
