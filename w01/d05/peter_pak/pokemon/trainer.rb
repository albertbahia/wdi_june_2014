require 'pry'

class Trainer

  attr_reader( :age, :hometown, :pokemon)

  def initialize(name, age, hometown, pokemon)
    @name = name
    @age = age
    @hometown = hometown
    @pokemon = pokemon
  end

  def name
    return @name.capitalize
  end

  def list_pokemon
    # pokemon_list = pokemon.map do |pokemon|
    #   pokemon.list_stats
    # end
    # pokemon_list.join("\n")
    pokemon.map { |pokemon| pokemon.list_stats }.join("\n")
  end

  def list_info
    info_string = "Name: #{name} | "
    info_string += "Age: #{age} | "
    info_string += "Hometown: #{hometown}"
  end

  def add_pokemon(pokemon_add)

    if pokemon.count < 6
      pokemon.push(pokemon_add)
      "You got it dude."
    else
      "You cannot carry more than 6 pokemon."
    end
  end

  def heal_pokemon
    heal_pokemon = pokemon.map do |pokemon|
      pokemon.restore_hp
    end
  end

  ##--show health status for each pokemon -- DONT NEED NO MORE
  # def pokemon_status
  #   pokemon_status = pokemon.map do |pokemon|
  #     pokemon.status
  #   end
  # end

end
