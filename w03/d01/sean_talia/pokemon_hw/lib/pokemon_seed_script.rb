require 'active_record'
require 'pry'
require_relative './pokemon_seed.rb'
require_relative './pokemon.rb'

# Connect to our database
ActiveRecord::Base.establish_connection({
  database: 'pokemon_db',
  adapter: 'postgresql'
  })

pokemon_list = get_pokemon()

pokemon_list.each do |pokemon|

  move_list = pokemon[:moves].map do |type, move_array|
    move_array.map do |move_hash|
      move_hash[:name]
    end
  end

  moves = move_list.join(', ').split(', ')[0...5].join(', ')

  Pokemon.create({
    name: pokemon[:name],
    img: pokemon[:img],
    hp: pokemon[:stats][:hp].to_i,
    attack: pokemon[:stats][:attack].to_i,
    defense: pokemon[:stats][:defense].to_i,
    speed: pokemon[:stats][:speed].to_i,
    moves: moves,
    classification: pokemon[:misc][:classification],
    species: pokemon[:type].join('/'),
    height: pokemon[:misc][:height],
    happiness:pokemon[:misc][:happiness].to_i
    })

end
