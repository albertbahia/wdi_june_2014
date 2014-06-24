require_relative './pokemon_seed.rb'
require_relative './pokemon.rb'
require 'active_record'
# require 'pry'

ActiveRecord::Base.establish_connection({
  database: 'pokemon_db',
  adapter: 'postgresql'
})

pokemon_list = get_pokemon()

pokemon_list.each do |pokemon_info|
    name = pokemon_info[:name]
    hp = pokemon_info[:stats][:hp].to_i
    attack = pokemon_info[:stats][:attack].to_i
    defense = pokemon_info[:stats][:defense].to_i
    speed = pokemon_info[:stats][:speed].to_i
    moves = ""
    pokemon_info[:moves].map do |move_type, moves_array|
      moves_array.map do |moves_hash|
        moves << moves_hash[:name]
      end
    end
    img = pokemon_info[:img]
    classification = pokemon_info[:classification]
    species = pokemon_info[:type].join(", ")
    height = pokemon_info[:misc][:height].to_i
    happiness = pokemon_info[:misc][:happiness].to_i

    Pokemon.create({
      Name: name,
      HP: hp,
      Attack: attack,
      Defense: defense,
      Speed: speed,
      Moves: moves,
      IMG: img,
      Classification: classification,
      Species: species,
      Height: height,
      Happiness: happiness
      });

end

# binding.pry
