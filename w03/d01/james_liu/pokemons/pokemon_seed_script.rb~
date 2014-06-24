require 'active_record'
require_relative 'pokemon_seed.rb'

ActiveRecord::Base.establish_connection({
    database: 'pokemon_db',
    adapter: 'postgresql'
})


class Pokemon < ActiveRecord::Base
end

pokedex = get_pokemon


def get_id(pokedex)
    pokedex[:id]
end

def get_name(pokedex)
    pokedex[:name]
end

def get_hp(pokedex)
    pokedex[:stats][:hp]
end

def get_attack(pokedex)
    pokedex[:stats][:attack]
end

def get_defense(pokedex)
    pokedex[:stats][:defense]
end

def get_speed(pokedex)
    pokedex[:stats][:speed]
end

def get_moves(pokedex)
    pokedex[:moves][:level][0][:name]
end

def get_img(pokedex)
    pokedex[:img]
end

def get_classification(pokedex)
    pokedex[:misc][:classification]
end

def get_type(pokedex)
    pokedex[:species]
end

def get_height(pokedex)
    pokedex[:misc][:height]
end

def get_happiness(pokedex)
    pokedex[:misc][:happiness]
end


pokedex.each do |pokedex|
    Pokemon.create({ id: get_id(pokedex), 
    name: get_name(pokedex),
    hp: get_hp(pokedex),
    attack: get_attack(pokedex),
    defense: get_defense(pokedex),
    speed: get_speed(pokedex),
    moves: get_moves(pokedex),
    img: get_img(pokedex),
    classification: get_classification(pokedex),
    species: get_type(pokedex),
    height: get_height(pokedex),
    happiness: get_happiness(pokedex) 
    })
end


