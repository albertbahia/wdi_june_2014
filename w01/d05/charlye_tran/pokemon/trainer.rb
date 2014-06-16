# require 'pry'

# A trainer should have a:
#
# name
# age
# hometown
# pokemons

# A trainer should be able to:
#
# list their pokemons
# list their info
# add a pokemon
# can not have more than 6

class Trainer
  attr_reader(:name, :age, :hometown, :pokemons)

  def initialize(name, age, hometown, pokemons)
    @name = name
    @age = age
    @hometown = hometown
    @pokemons = pokemons
  end

  def info
    trainer_info = "Name: #{name}. "
    trainer_info += "Age: #{age}. "
    trainer_info += "Hometown: #{hometown}. "
  end

  def show_pokemon
    return "Pokemons: #{pokemons.join(' and ')}"
  end

  def add_pokemon()
    count = pokemons.count
    if count >= 6
      puts "Sorry! You can only have 6 pokemons per trainer."
    else
      puts "What Pokemon would you like to add?"
      new_pokemon = gets.chomp
      pokemons.push(new_pokemon)
    end
  end

end

# charlye = Trainer.new("Charlye", 31, "New Orleans", ["Pikachu"])
#
# binding.pry
