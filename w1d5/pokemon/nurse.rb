# A nurse should have a:
#
# name
# age
# town
# A nurse should be able to:
#
# list their info
# heal a trainer's pokemons
  # hint: it should accept a single parameter
  
#require 'pry'

class Nurse
  attr_reader(:name, :age, :town)

  def initialize(name, age, town)
    @name = name
    @age = age
    @town = town
  end

  def info
    nurse_info = "Name: #{name}. "
    nurse_info += "Age: #{age}. "
    nurse_info += "Town: #{town}."
  end

  def heal(heal_amount)
    if pokemon.hp >= 100
      puts "Your pokemon is at full HP."
    else
      pokemon.hp = pokemon.hp + heal_amount
      if pokemon.hp > 100
        pokemon.hp = 100
      end
    end
  end
end

# nurse = Nurse.new("Emily", 25, "Seattle")
#
# binding.pry
