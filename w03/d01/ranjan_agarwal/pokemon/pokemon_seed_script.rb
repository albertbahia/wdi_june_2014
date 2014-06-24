require 'active_record'
require 'pry'
require_relative './pokemon_seed.rb'
require_relative './pokemon.rb'

ActiveRecord::Base.establish_connection({
    database: 'pokemon_db',
    adapter: 'postgresql'
})

poke_array = get_pokemon
poke_array.each do |poke_info|
  id = poke_info[:id].to_i
  name = poke_info[:name]
  hp = poke_info[:stats][:hp].to_i
  attack = poke_info[:stats][:attack].to_i
  defense = poke_info[:stats][:defense].to_i
  speed = poke_info[:stats][:speed].to_i
  moves = ""
  poke_info[:moves].each do |move_type, moves_arr|
    moves_arr.each do |move_hash|
      moves << move_hash[:name] + " "
    end
  end
  img = poke_info[:img]
  species = poke_info[:type].join(', ')
  classification = poke_info[:misc][:classification]
  height = poke_info[:misc][:height].to_s
  happiness = poke_info[:misc][:happiness].to_i

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
