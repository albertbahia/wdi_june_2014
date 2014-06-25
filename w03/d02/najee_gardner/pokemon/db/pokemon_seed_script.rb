require_relative 'pokemon_seed.rb'
require 'active_record'

ActiveRecord::Base.establish_connection({
  database: 'pokemon_db',
  adapter: 'postgresql'
})

require_relative '../lib/pokemon.rb'

pkmns = get_pokemon


pkmns.each do |pkmn|
  name = pkmn[:name]
  hp = pkmn[:stats][:hp].to_i
  attack = pkmn[:stats][:attack].to_i
  defense = pkmn[:stats][:defense].to_i
  speed = pkmn[:stats][:speed].to_i

  moves = ''
  pkmn[:moves].each do |move_type|
    move_type.last.each do |move_hash|
      moves << move_hash[:name] + ' '
    end
  end

  img_url = pkmn[:img]
  classification = pkmn[:misc][:classification]
  species = pkmn[:type].join("/")
  height = pkmn[:misc][:height]
  happiness = pkmn[:misc][:happiness].to_i

  Pokemon.create({
    name: name,
    hp: hp,
    attack: attack,
    defense: defense,
    speed: speed,
    moves: moves,
    image_url: img_url,
    classification: classification,
    species: species,
    height: height,
    happiness: happiness
  })

end
