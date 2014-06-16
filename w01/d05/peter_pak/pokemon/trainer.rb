require 'pry'

class Trainer

  attr_reader( :name, :age, :hometown, :pokemon)

  def initialize(name, age, hometown, pokemon)
    @name = name
    @age = age
    @hometown = hometown
    @pokemon = pokemon
  end

  def list_pokemon
    pokemon_list = pokemon.map do |pokemon|
      pokemon.list_stats
    end
    pokemon_list.join("\n")
  end

  def list_info
    info_string = "Name: #{name} | "
    info_string += "Age: #{age} | "
    info_string += "Hometown: #{hometown}"
  end

  def add_pokemon(pokemon_add)
    if pokemon.count < 6
      pokemon.push(pokemon_add)
    else
      add_error = "You cannot carry more than 6 pokemon."
    end
  end

  def heal_pokemon
    heal_pokemon = pokemon.map do |pokemon|
      pokemon.restore_hp
    end
  end

  ##--show health status for each pokemon
  def pokemon_status
    pokemon_status = pokemon.map do |pokemon|
      pokemon.status
    end
  end

end
