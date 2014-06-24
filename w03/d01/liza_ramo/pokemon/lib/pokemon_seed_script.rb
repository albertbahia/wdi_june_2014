
# This file will load the DB only with the attributes we need from the seed file

require_relative 'pokemon.rb'
require_relative 'pokemon_seed.rb'
require 'pry'
require 'active_record'


ActiveRecord::Base.establish_connection({
  database: 'pokemon_db',
  adapter: 'postgresql'
  })

pokemon = get_pokemon()

def get_moves(moves_hash)
  result = ''
  moves_hash.each do |key,value|
    value.each do |move_hash|
      result += "#{move_hash[:name]}"
    end
      return result
  end
end

pokemon.each do |poke_hash|
  moves = get_moves(poke_hash[:moves])
end

  pokemon.each do |pokemon|
    Pokemon.create({
      id: pokemon[:id],
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





# id SERIAL PRIMARY KEY,
# name VARCHAR(255),
# hp INTEGER,
# attack INTEGER,
# defense INTEGER,
# speed INTEGER,
# moves VARCHAR(255),
# image_url VARCHAR(255),
# classification VARCHAR(255),
# species VARCHAR(255),
# height VARCHAR(255),
# happiness INTEGER

# pokemon.each do |poke_hash|
#   moves = get_moves(poke_hash[:moves])
#   arr.map do |hash|
#     hash_name = hash[:name]
#       hash_name.join(', ')
#     end
#     arr.join(', ')
#   end

# def get_moves(pkmns)
#   moves = pkmns.map do |pokemon|
#     pokemon[:moves][:level].map do |moves|
#       moves[:name]
#     end
#   end
#   moves = pkmns.map do |pokemon|
#     pokemon[:moves][:tmhm].map do |moves|
#       moves[:name]
#     end
#   end
#   moves = pkmns.map do |pokemon|
#     pokemon[:moves][:egg].map do |moves|
#       moves[:name]
#     end
#   end
#   moves = pkmns.map do |pokemon|
#     pokemon[:moves][:tutor].map do |moves|
#       moves[:name]
#     end
#   end
#   moves = pkmns.map do |pokemon|
#     pokemon[:moves][:gen34].map do |moves|
#       moves[:name]
#     end
#   end
#   moves.join(', ')
# end

# def get_moves
#   info_string = pokemon[:moves][:level][:name],
#   info_string += pokemon[:moves][:tmhm][:name],
#   info_string += pokemon[:moves][:egg][:name],
#   info_string += pokemon[:moves][:tutor][:name],
#   info_string += pokemon[:moves][:gen34][:name]
# end


# def get_id(pokerray)
#   pokerray[0][:id].to_i
# end

# def get_name(pokerray)
#   pokerray[0][:name]
# end
#
# def get_hp(pokerray)
#
# end
#
# def get_attack(pokerray)
#
# end
#
# def get_defense(pokerray)
#
# end
#
# def get_speed(pokerray)
#
# end
#
# def get_moves(pokerray)
#
# end
#
# def get_image_url(pokerray)
#
# end
#
# def get_classification(pokerray)
#
# end
#
# def get_species(pokerray)
#
# end
#
# def get_height(pokerray)
#
# end
#
# def get_happiness(pokerray)
#
# end
#
#
#
