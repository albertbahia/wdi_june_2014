require 'active_record'
require 'pry'
require_relative 'pokemon_seed.rb'
require_relative 'pokemon.rb'


ActiveRecord::Base.establish_connection({
  database: 'pokemon_db',
  adapter: 'postgresql'
})

pokemon_list = get_pokemon

def seed_db(array_of_pokemon)
  array_of_pokemon.each do |hash|
      id = hash[:id].to_i
      name = hash[:name]
      hp = hash[:stats][:hp].to_i
      attack = hash[:stats][:attack].to_i
      defense = hash[:stats][:defense].to_i
      speed = hash[:stats][:speed].to_i
      moves = hash[:moves][:name]
      image_url = hash[:img]
      classification = hash[:misc][:classification]
      species = hash[:type].join(' ')
      height = hash[:misc][:height].to_i
      happiness = hash[:misc][:happiness].to_i

  Pokemon.create(id: id, name: name, hp: hp, attack: attack, defense: defense, speed: speed, moves: moves, image_url: image_url, classification: classification,
  species: species, height: height, happiness: happiness)
  end
end

seed_db(pokemon_list)


  # Iterate through the massive poke array
  # for each poke hash in the array
  #   create a new pokemon object using the values in the hash and add it to the db





# POKEMONS SCHEMA FILE
# ---------------------
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
# height INTEGER,
# happiness INTEGER
# );
