require_relative './pokemon.rb'
require 'pry'

def print_divider()
  puts "~" * 10
end

class Trainer

  attr_reader :name, :age, :hometown, :pokemons

  def initialize(name, age, hometown, init_pokemons)
    @name = name
    @age = age
    @hometown = hometown
    @pokemons = init_pokemons
  end

  def list_pokemon()
    @pokemons.each do |pokemon|
      if pokemon != @pokemons.last
        print "#{pokemon.name}, "
      else
        puts "#{pokemon.name}"
      end
    end
  end

  def list_info()
    print_divider()
    puts "Name: #{@name}"
    puts "Age: #{@age}"
    puts "Hometown: #{@hometown}"
    print "Pokémon: "
    self.list_pokemon()
    print_divider()
  end

  def add_pokemon(pokemon_to_add)
    if @pokemons.length < 6
      @pokemons.push(pokemon_to_add)
    else
      puts "#{@name} can't carry any more Pokémon."
    end
  end
end
