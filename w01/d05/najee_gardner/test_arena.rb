require 'pry'
require_relative 'trainer.rb'
require_relative 'pokebase.rb'
require_relative 'nurse'

poke_mama = Pokebase.new

pkmns = [
  poke_mama.create_pkmn(rand(151) + 1),
  poke_mama.create_pkmn(rand(151) + 1),
  poke_mama.create_pkmn(rand(151) + 1),
  poke_mama.create_pkmn(rand(151) + 1),
  poke_mama.create_pkmn(rand(151) + 1),
  poke_mama.create_pkmn(rand(151) + 1),
  poke_mama.create_pkmn(rand(151) + 1),
  poke_mama.create_pkmn(rand(151) + 1)
]

pkmns[0].take_damage(100)
pkmns[1].take_damage(100)
pkmns[2].take_damage(50)
pkmns[3].take_damage(50)
pkmns[4].take_damage(20)
pkmns[5].take_damage(30)
pkmns[6].take_damage(40)
pkmns[7].take_damage(75)

# binding.pry


ash = Trainer.new("ash", 10, "pallet town", pkmns[0,5])

# binding.pry

joy = Nurse.new(28, "lavender town")

# binding.pry

puts ash.info
puts ""
puts joy.info
puts ""
puts ash.list_pkmn
