require 'pry'
require './pokemon.rb'
class Nurse
  attr_reader(:nurse_name, :nurse_age, :nurse_town)
  def initialize(nurse_name,nurse_age,nurse_town)
    @nurse_name = nurse_name
    @nurse_age  = nurse_age
    @nurse_town = nurse_town
  end

end

def nurse_info(nurse)
    puts "=" * 50
    puts "Name: #{nurse.nurse_name}"
    puts "Age: #{nurse.nurse_age}"
    puts "Hometown: #{nurse.nurse_town}"
    puts "=" * 50
end

def heal(hp)
  if Pokemon.hp < 100
    Pokemon.hp = 100
  else
    "Your Pokemon is at full health!"
  end
end



# 
# pikachu    = Pokemon.new("Pikachu", "#025", "Electric", 100, "40","50", "90")
# venasaur   = Pokemon.new("Venasaur", "#003", "Grass", 100, "40","50", "90")
# charizard  = Pokemon.new("Charizard", "#006", "Fire", 50, "40","50", "90")
# blastoise  = Pokemon.new("Blastoise", "#009", "Water", 50, "40","50", "90")
# jigglypuff = Pokemon.new("Jigglypuff", "#039", "Normal", 0, "40","50", "90")
# mewtwo     = Pokemon.new("Mewtwo", "#150", "Psychic", 0, "40","50", "90")
# mew        = Pokemon.new("Mew", "#151", "Psychic", 100, "40","50", "90")
# magikarp   = Pokemon.new("Magikarp", "#129", "Water", 100, "40","50", "90")
# binding.pry
