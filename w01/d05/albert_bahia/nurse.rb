require 'pry'
require_relative './trainer.rb'
require_relative './pokemon.rb'

class Nurse

  attr_reader(:name, :age, :town)

  def initialize(name, age, town)
    puts("A Nurse has been created.")
    @name = name
    @age = age
    @town = town
  end

  def show_info
    puts("Name: #{name.capitalize}")
    puts("Age: #{age}")
    puts("Town: #{town}")
  end

  # def heal_pokemon(pokemon_status)
  #
  #
  # end


end

# nurse = Nurse.new("Misa", 25, "Los Angeles")
# binding.pry
