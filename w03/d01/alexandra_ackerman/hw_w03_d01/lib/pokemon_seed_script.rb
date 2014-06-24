require_relative './pokemon_seed.rb'
require 'pry'
require 'active_record'
require_relative 'pokemon.rb'

ActiveRecord::Base.establish_connection({
  database: 'pokemon_db',
  adapter: 'postgresql'
  })

# pokemon = get_pokemon

def get_moves(moves_hash)
  result = ''
  moves_hash.each do |key,value|
    value.each do |move_hash|
      result += "#{move_hash[:name]}"
    end
      return result
  end
end

pokemon.each do |hash|
  moves = get_moves(hash[:moves])
end

  pokemon.each do |pokemon|
    Pokemon.create({
      name: pokemon[:name],
      hp: pokemon[:stats][:hp],
      attack: pokemon[:stats][:attack],
      defense: pokemon[:stats][:defense],
      speed: pokemon[:stats][:speed],
      moves: get_moves(pokemon[:moves]),
      image: pokemon[:img],
      classification: pokemon[:misc][:classification],
      species: pokemon[:type].join(', '),
      height: pokemon[:misc][:height],
      happiness: pokemon[:misc][:happiness]
      })
  end

binding.pry
