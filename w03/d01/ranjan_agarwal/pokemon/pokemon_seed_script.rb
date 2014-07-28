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
  # poke_info[:moves][:level].map { |move| move[:name].capitalize}.join(' | ')
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

=begin
pokemon_array = get_pokemon
pokemon_array.each do |poke_hash|
  Pokemon.create({
    name: poke_hash[:name]
    img: poke_hash[:img]
    hp: poke_hash[:stats][:hp].to_i
    attack: poke_hash[:stats][:attack].to_i
    defense: poke_hash[:stats][:defense].to_i
    speed: poke_hash[:stats][:speed].to_i
    species: poke_hash[:type].join(' | ')
    moves: poke_hash[:moves][:level].map { |move| move[:name].capitalize}.join(' | ')
    classification: poke_hash[:misc][:classification]
    height: poke_hash[:misc][:height].to_s
    happiness: poke_hash[:misc][:happiness].to_i
  })
=end


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
