class Trainer

  attr_reader(:age, :hometown, :pokemons)

  def intialize(name, age, hometown, pokemons)
    @name = name
    @age = age
    @hometown = hometown
    @pokemons = pokemons
  end

  def name
    return @name.capitalize
  end

  def list_pokemon
    pokemons.map { |pokemon| pokemon.list_stats }.join("\n")
  end

  def trainer_info
    info = "Name: #{name.capitalize},"
    info += " Age: #{age}"
    info += " From: #{hometown},"
    info += " I have #{pokemons.count} Pokemon."
  end

  def add_pokemon(pokemon_to_add)
    if pokemons.count < 6
      pokemons.push(pokemon_to_add)
      return :true
    else
      return false
    end
  end
end

  # def list_trainers
  #   trainer_info = trainers.map { |trainer| trainer.list_info }
  #   trainer_info.join("\n")
  # end

  # def list_pokemon
  #   pokemon_info = pokemons.map { |pokemon| pokemon.list_info}
  #   pokemon_info.join("\n")
  # end

  # def add_pokemon
  #
  # end
