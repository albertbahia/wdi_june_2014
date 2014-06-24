require_relative './pokemon_seed.rb'
require 'pry'
require 'active_record'


ActiveRecord::Base.establish_connection({
  database: 'pokemon_db',
  adapter: 'postgresql'
})


class Pokemon < ActiveRecord::Base

  acquire_pokemons = get_pokemon()


  # def acquire_pokemon_moves(acquire_pokemons)
  #
  #   acquire_pokemons.each do |pokemon|
  #     moves = pokemon[:stats][:moves]
  #     puts moves
  #   end
  #
  # end

  acquire_pokemons.each do |pokemon|

    Pokemon.create({name: pokemon[:name],
      img: pokemon[:img],
      species: pokemon[:type].join(", "),
      hp: pokemon[:stats][:hp],
      attack: pokemon[:stats][:attack],
      defense: pokemon[:stats][:defense],
      speed: pokemon[:stats][:speed],
      moves: pokemon[:stats][:moves],
      classification: pokemon[:misc][:classification],
      height: pokemon[:misc][:height],
      happiness: pokemon[:misc][:happiness]
      })

  end


end
binding.pry
