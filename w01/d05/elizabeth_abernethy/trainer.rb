# require 'pry'

class Trainer

  attr_reader(:name, :age, :hometown, :pokemons)

  def initialize(name, age, hometown, pokemons)
    @name = name
    @age = age
    @hometown = hometown
    @pokemons = pokemons
  end

  def list_pokemons
    return :pokemons
  end

  def list_info
    info = "Name: #{name.capitalize}"
    info += "Age: #{age}"
    info += "Hometown: #{hometown}"
  end

  def add_pokemon(pokemon)
    :pokemons.push(pokemon)
  end

end
