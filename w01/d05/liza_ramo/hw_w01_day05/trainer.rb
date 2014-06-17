require 'pry'

class Trainer
  attr_reader( :name, :age, :hometown, :pokemons)

  def initialize(name, age, hometown, pokemons)
    @name = name
    @age = age
    @hometown = hometown
    @pokemons = pokemons
  end

  def list_info
    stats_string = "Name: #{name}"
    stats_string += " Age: #{age},"
    stats_string += " Hometown: #{hometown},"
    stats_string += " Pokemons: #{pokemons},"
  end


  def list_pokemon
    pokemons.each do |pokemon|
      puts("List of pokemon: #{pokemon.name}")
  end

  def add_pokemon
    trainer.pokemon.push
  end

end



liza = Trainer.new("Liza", 26, "Asheville", [bulbasaur, ivysaur, venusaur, charmander, charmeleon])
binding.pry
