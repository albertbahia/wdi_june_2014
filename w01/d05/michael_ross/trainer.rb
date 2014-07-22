require 'pry'

class Trainer

  attr_reader(:name, :age, :hometown, :pokemons)

  def initialize(name, age, hometown, pokemons)
    @name = name
    @age = age
    @hometown = hometown
    @pokemons = pokemons
  end

  def list_pokemons
    pokemons.map { |pokemon| pokemon.list_stats }.join("\n")
  end

  def trainer_info
    info_string = "| Trainer name: #{name} | "
    info_string += "Age: #{age} | "
    info_string += "Hometown: #{hometown} | "
    info_string += "I have: #{pokemons.count} Pokemon!|"
  end

  def add_pokemon(pokemon_to_add)
    if pokemounts.count < 6
      pokemons.push(pokemon_to_add)
      return true
    else
      return false
  end



end
#Below needs to be in main.rb (main interface)
pikachu = Pokemon.new("Pikachu", 1, "fighting", 99, "hit", "block", 78),
charzar = Pokemon.new("Charzar", 2, "defender", 45, "swipe", "jump", 44),
poliwhirl = Pokemon.new("Poliwhirl", 3, "amphibious", 50, "slime", "swim away", 99),
growlithe = Pokemon.new("Growlithe", 4, "fluffy", 50, "bite", "bark", 33),
arcanine = Pokemon.new("Arcanine", 5, "canine", 0, "flame", "smoke", 57),
golduck = Pokemon.new("Golduck", 6, "platypus", 0, "slap", "swim", 35),
bulbasaur = Pokemon.new("Bulbasaur", 7, "dinasaur", 23, "stomp", "hide", 24),
turtwig = Pokemon.new("Turtwig", 8, "turtle", 36, "bite", "swim", 68)


michael = Trainer.new("Michael", 27, "NYC", [pikachu, charzar, growlithe])
binding.pry
