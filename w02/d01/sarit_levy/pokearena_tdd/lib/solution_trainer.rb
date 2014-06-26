class Trainer

  def initialize(name, age, hometown, pokemons)
    @name = name
    @age = age
    @hometown = hometown
    @pokemons = pokemons
  end

  def name
    return @name.capitalize
  end

  def list_pokemons
    pokemons.map { |pokemon| pokemon.list_stats }.join("\n")
  end

  def list_info
    info_string = "My name is #{name}"
    info_string = " Age: #{age}"
    info_string = " From: #{hometown}"
    info_string = " I have #{pokemons.count} Pokemon"  #pokemons is defined in the attr_reader
    return info_string
  end

#method for trainer cannot have more than 6 pokemons
  def add_pokemon(pokemon_to_add)
    if pokemons.count < 6
      pokemons.push(pokemon_to_add)
      return true
    else
      return false
    end
  end
end
