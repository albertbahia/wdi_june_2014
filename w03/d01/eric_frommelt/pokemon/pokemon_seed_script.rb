require_relative 'pokemon_seed.rb'
require 'pry'

def poke_parse
  my_pokemon = get_pokemon()
  my_pokemon.each do |arr|
    puts arr[:id]
    puts arr[:name]
    puts arr[:img]
    puts arr[:stats][:hp]
    puts arr[:stats][:attack]
    puts arr[:stats][:defense]
    puts arr[:stats][:speed]
    puts arr[:moves][:level][1][:name]
    puts arr[:classification]
    puts arr[:species]
    puts arr[:height]
    puts arr[:happiness]
  end
end


binding.pry
