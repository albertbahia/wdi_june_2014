require 'active_record'
# require 'pry'
require_relative './pokemon_seed.rb'
require_relative './pokemon.rb'

ActiveRecord::Base.establish_connection({
    database: 'pokemon_db',
    adapter: 'postgresql'
})

poke_array = get_pokemon
poke_array.each do |info|
  id = info[:id].to_i
  name = info[:name]
  hp = info[:stats][:hp].to_i
  attack = info[:stats][:attack].to_i
  defense = info[:stats][:defense].to_i
  speed = info[:stats][:speed].to_i
  moves = ""
  info[:moves].each do |move_type, moves_arr|
    moves_arr.each do |move_hash|
      moves << move_hash[:name] + " "
    end
  end
  img = info[:img]
  species = info[:type].join(', ')
  classification = info[:misc][:classification]
  height = info[:misc][:height].to_s
  happiness = info[:misc][:happiness].to_i

  Pokemon.create(
    id: id,
    name: name,
    hp: hp,
    attack: attack,
    defense: defense,
    speed: speed,
    moves: moves,
    img: img,
    species: species,
    classification: classification,
    height: height,
    happiness: happiness,
  )

end
