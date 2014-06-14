require 'pry'

require_relative './pokemon.rb'
require_relative './nurse.rb'
require_relative './trainer.rb'

#name, id, poketype, hp, attack, defense, speed

cricket = Pokemon.new("Cricket", 3, "rock", 100, 85, 90, 95)
mouse = Pokemon.new("Mouse", 4, "poison", 29, 34, 35, 66)
worm = Pokemon.new("Worm", 5, "water", 66, 98, 89,34)
fly = Pokemon.new("Fly", 6, "grass", 83, 35, 55,22)
ant = Pokemon.new("Ant", 7, "fire", 50, 56, 66, 77)
bird = Pokemon.new("Bird", 8, "fly", 50, 89, 90, 39)
butterfly = Pokemon.new("Butterfly",9, "steel", 0, 45, 93, 24)
bee = Pokemon.new("Bee", 1, "psychic", 0, 39, 42, 82)

pokes = [cricket, mouse, worm, fly, ant]

mouse.poke_stats
mouse.take_damage(90)
puts "HP is #{mouse.hp}"

puts mouse.name

mouse.poke_status

hoa = Trainer.new("Hoa", 28, "Woodlawn", pokes)

hoa.list_pokemons(pokes)
binding.pry
