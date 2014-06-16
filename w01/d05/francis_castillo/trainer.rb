# require_relative 'pokemon.rb'
# require_relative 'nurse.rb'
# require 'pry'
class Trainer

  attr_reader(:name,:age,:hometown,:pokemons)
  def initialize(name, age, hometown, pokemons)
    @name = name
    @age = age
    @hometown = hometown
    @pokemons = pokemons
  end

  def list_trainers_pokemons
    @pokemons
  end

  def list_trainers_info
    trainer_info  = "Name: #{name}\n"
    trainer_info += "Age: #{age}\n"
    trainer_info += "Hometown: #{hometown}\n"
    trainer_info += "Pokemons: #{pokemons}"
  end

  def add_pokemon(add_poke)
    if (add_poke.pokemons.length) == 6
      puts "Can't add any pokemon at this time"
    elsif add_poke.pokemons.length < 6
      puts "You can add #{((add_poke.pokemons.length) - 6).abs} pokemon!\nAdd your pokemon's below, with a ',' separating each one!"
      added_pokemons = gets.chomp.split(", ")
      added_pokemons.take(((add_poke.pokemons.length) - 6).abs).each {|x| add_poke.pokemons << x}

    end
  end

end

# binding.pry
