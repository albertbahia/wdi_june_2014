require 'pry'

require_relative './pokemon.rb'

class Trainer

  attr_reader(:name, :age, :hometown, :pokemons)

  def initialize(name, age, hometown, pokemons)
    @name = name
    @age = age
    @hometown = hometown
    @pokemons = pokemons
  end


  def list_pokemon(trainer)
    arsenal.each {|trainer| puts trainer }
  end


  def trainer_info
    info_string = "| Trainer name: #{name} | "
    info_string += "Age: #{age} | "
    info_string += "Hometown: #{hometown} | "
    info_string += "Pokemons: #{pokemons} |"
  end

  def add_pokemon(name, id, poketype, hp, attack, defense, speed)
    a = Pokemon.new
    a.map { |a| a.push() }
  end

  def add_stats
    a = []
    a.push()

  end



end

arsenal = [
Pokemon.new("Pikachu", 1, "fighting", 99, "hit", "block", 78),
Pokemon.new("Charzar", 2, "defender", 45, "swipe", "jump", 44),
Pokemon.new("Poliwhirl", 3, "amphibious", 50, "slime", "swim away", 99),
Pokemon.new("Growlithe", 4, "fluffy", 50, "bite", "bark", 33),
Pokemon.new("Arcanine", 5, "canine", 0, "flame", "smoke", 57),
Pokemon.new("Golduck", 6, "platypus", 0, "slap", "swim", 35),
Pokemon.new("Bulbasaur", 7, "dinasaur", 23, "stomp", "hide", 24),
Pokemon.new("Turtwig", 8, "turtle", 36, "bite", "swim", 68)
]


michael = Trainer.new("Michael", 27, "NYC", arsenal[0,4])
binding.pry
