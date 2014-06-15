require_relative './pokemon.rb'

pokemon = [
  Pokemon.new("Charizard", 100, "Fire", 100, 30, 20, 10),
  Pokemon.new("Meowth", 29, "Earth", 100, 15, 20, 30)
]

loop do
  puts("Welcome to the PokeArena!")
  puts(pokemon.list_stats)

end
