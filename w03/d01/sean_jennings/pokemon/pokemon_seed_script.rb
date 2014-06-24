require 'active_record'
require 'pry'
require_relative '../pokemon_seed.rb'

ActiveRecord::Base.establish_connection({
  database: 'pokemon_db',
  adapter: 'postgresql'
})

#Define the show class

class Pokemon < ActiveRecord::Base

end


pokemon = get_pokemon()

pokemon.each do |hash|
  name = hash[:name]
  hp = hash[:stats][:hp].to_i
  attack = hash[:stats][:attach].to_i
  defense = hash[:stats][:defense].to_i
  speed = hash[:stats][:speed].to_i
  moves = hash[:moves][:level].map { |moves| moves[:name] }.join(', ')
  image = hash[:img]
  classification = hash[:misc][:classification]
  species = hash[:type].join(',')
  height = hash[:misc][:height].to_i
  happiness = hash[:misc][:happiness].to_i

Pokemon.create(
  :name => name,
  :hp => hp,
  :attack => attack,
  :defense => defense,
  :speed => speed,
  :moves => moves,
  :image => image,
  :classification => classification,
  :species => species,
  :height => height,
  :happiness => happiness
)

end
binding.pry
