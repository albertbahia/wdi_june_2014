<<<<<<< HEAD
class Trainer

  attr_reader(:age, :hometown, :pokemons)
=======
# require 'pry'

class Trainer

  attr_reader(:name, :age, :hometown, :pokemons)
>>>>>>> e2df5c5e2b8622c95d7da79a5c5d6337a8293176

  def initialize(name, age, hometown, pokemons)
    @name = name
    @age = age
    @hometown = hometown
<<<<<<< HEAD
    @pokemons = pokemons #--- this is an array
  end

  def name
    return @name.capitalize
  end

  def list_pokemons
    # --- curly braces are the same as do / end
    # --- job of .map returns a new array > transforms data from one array to another array related to it
    pokemons.map { |pokemon| pokemon.list_stats }.join("\n")
  end

  def list_info
    info_string = "My name is #{name}"
    info_string += " Age: #{age}"
    info_string += " From: #{hometown}"
    info_string += " I have #{pokemons.count} Pokemon"
    return info_string
  end

  # --- true/false is more flexible in binary situations
  def add_pokemon(pokemon_to_add)
    if pokemons.count < 6
      pokemons.push(pokemon_to_add)
      return true
    else
      return false
    end
=======
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
>>>>>>> e2df5c5e2b8622c95d7da79a5c5d6337a8293176
  end

end
