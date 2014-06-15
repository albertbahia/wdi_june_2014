require 'pry'

class Trainer

  attr_reader(:name, :age, :hometown, :pokemon)

  def initialize(name, age, hometown, pokemon)
    @name = name
    @age = age
    @hometown = hometown
    @pokemon = pokemon
  end

  def list_info
        info_string = "Name: #{name}, "
        info_string += "Age: #{hometown} "
        info_string += "Hometown: #{hometown} "
        info_string += "Pokemon: #{pokemon} "
    end

  def list_pokemon
    pokemon_info = pokemon.map { |pokemon| pokemon.list_stats }
    pokemon_info.join("\n")
  end

  def add_pokemon
    new_pokemon = pokemon.map { |pokemon| pokemon.new()}
  end
end

binding.pry
