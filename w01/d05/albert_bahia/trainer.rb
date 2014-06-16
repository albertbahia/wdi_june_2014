require 'pry'
require_relative './nurse.rb'
require_relative './pokemon.rb'

class Trainer

  attr_reader(:name, :age, :hometown, :pokemons)

  def initialize(name, age, hometown, pokemons)
    puts("A Trainer has been created!")
    @name = name
    @age = age
    @hometown = hometown
    @pokemons = pokemons
  end

  def show_info()
    puts("Name: #{name.capitalize}")
    puts("Age: #{age}")
    puts("Hometown: #{hometown}")
  end

  def show_pokemons()
    puts("#{name.capitalize} has #{pokemons.length} pokemon. They're listed below:")
    puts("#{pokemons}")
  end

  def add_pokemon(pokemon)
    if @pokemons.length < 6
      @pokemons.push(pokemon)
    else
      puts("Sorry, #{name.capitalize} already has #{pokemons.length} pokemon.")
  end
  
end

# trainer = Trainer.new("Ash", 28, "Kanto", pokemons)
# binding.pry
