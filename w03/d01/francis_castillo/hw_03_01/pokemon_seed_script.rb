require 'active_record'
require_relative 'pokemon_seed.rb'
require_relative 'pokemon.rb'
require 'pry'

ActiveRecord::Base.establish_connection ({
  database: 'pokemon_db',
  adapter: 'postgresql'
  })

#seed method
get_pokemon.each do |poke|
  Pokemon.create({
    id: poke[:id], name: poke[:name], hp: poke[:stats][:hp], attack: poke[:stats][:attack], defense: poke[:stats][:defense], speed: poke[:stats][:speed], moves: poke[:moves][:level].map{|moves| moves[:name].capitalize}.join(', '), image_url: poke[:img], classification: poke[:misc][:classification], species: poke[:type].join(', '), height: poke[:misc][:height], happiness: poke[:misc][:happiness]
  })
end

binding.pry
