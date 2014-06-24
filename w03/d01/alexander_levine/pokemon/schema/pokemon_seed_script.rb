require 'active_record'
require 'pry'
require_relative '../pokemon_seed.rb'

ActiveRecord::Base.establish_connection({
  database: 'pokemon_db',
  adapter: 'postgresql'
})

class Pokemon < ActiveRecord::Base

end

pokedex = get_pokemon


def name(pokedex)
  name = pokedex.map do |pokemon|
    pokemon[:name]
  end
end

def hp(pokedex)
  hp = pokedex.map do |pokemon|
    pokemon[:stats][:hp]
  end
end

def attack(pokedex)
  attack = pokedex.map do |pokemon|
    pokemon[:stats][:attack]
  end
end

def defense(pokedex)
  defense = pokedex.map do |pokemon|
    pokemon[:stats][:defense]
  end
end

def speed(pokedex)
  speed = pokedex.map do |pokemon|
    pokemon[:stats][:speed]
  end
end

# def moves(pokedex)
#   level = pokedex.map do |pokemon|
#     pokemon[:moves][:level].map do |moves|
#       moves[:name]
#     end
#   end
#   level.join(', ')
#   tmhm = pokedex.map do |pokemon|
#     pokemon[:moves][:level].map do |moves|
#       moves[:name]
#     end
#   end
#   level.join(', ')
#   egg
#   tutor
#   gen34
# end



def img(pokedex)
  img = pokedex.map do |pokemon|
    pokemon[:img]
  end
end

def classification(pokedex)
  classification = pokedex.map do |pokemon|
    pokemon[:misc][:classification]
  end
end

def species(pokedex)
  species = pokedex.map do |pokemon|
    pokemon[:type].join(', ')
  end
end

def height(pokedex)
  height = pokedex.map do |pokemon|
    pokemon[:misc][:height]
  end
end

def happiness(pokedex)
  happiness = pokedex.map do |pokemon|
    pokemon[:misc][:happiness]
  end
end

def moves(moves_hash)
  result = ''
  moves_hash.each do |key,value|
    value.each do |move_hash|
      result += "#{move_hash[:name]}, "
    end
  end
  return result
end


pokedex.each do |pokemon|
  Pokemon.create({
    name: pokemon[:name],
    hp: pokemon[:stats][:hp],
    attack: pokemon[:stats][:attack],
    defense: pokemon[:stats][:defense],
    speed: pokemon[:stats][:speed],
    moves: moves(pokemon[:moves]),
    img: pokemon[:img],
    classification: pokemon[:misc][:classification],
    species: pokemon[:type].join(', '),
    height: pokemon[:misc][:height],
    happiness: pokemon[:misc][:happiness]
  })
end


binding.pry
