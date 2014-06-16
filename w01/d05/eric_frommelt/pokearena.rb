require 'pry'

require_relative './pokemon.rb'
require_relative './trainer.rb'
require_relative './nurse.rb'

poke1 = Pokemon.new("Empoleon", 0, "water", 0, 25, 18, false)
poke2 = Pokemon.new("Seviper", 1, "poision", 0, 25, 18, false)
poke3 = Pokemon.new("Quagsire", 2, "ground", 50, 25, 18, true)
poke4 = Pokemon.new("Abra", 3, "psychic", 50, 25, 18, true)
poke5 = Pokemon.new("Pinsir", 4, "bug", 77, 25, 18, true)
poke6 = Pokemon.new("Omastar", 5, "rock", 14, 25, 18, true)
poke7 = Pokemon.new("Giratina", 6, "ghost", 36, 25, 18, true)
poke8 = Pokemon.new("Honchkrow", 7, "dark", 45, 25, 18, true)

trainer1 = Trainer.new("Cameron", 10, "Tribeca", [poke1, poke3, poke6, poke7, poke8])

nurse = Nurse.new("Julie", 25, "Krypton")

puts()

binding.pry
