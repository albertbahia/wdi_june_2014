require_relative './trainer.rb'
require_relative './pokemon.rb'

pokemons = [
  pikachu = Pokemon.new("Pikachu", 1, "fighting", 99, "hit", "block", 78),
  charzar = Pokemon.new("Charzar", 2, "defender", 45, "swipe", "jump", 44),
  poliwhirl = Pokemon.new("Poliwhirl", 3, "amphibious", 50, "slime", "swim away", 99),
  growlithe = Pokemon.new("Growlithe", 4, "fluffy", 50, "bite", "bark", 33),
  arcanine = Pokemon.new("Arcanine", 5, "canine", 0, "flame", "smoke", 57),
  golduck = Pokemon.new("Golduck", 6, "platypus", 0, "slap", "swim", 35),
  bulbasaur = Pokemon.new("Bulbasaur", 7, "dinasaur", 23, "stomp", "hide", 24),
  turtwig = Pokemon.new("Turtwig", 8, "turtle", 36, "bite", "swim", 68)
]



def list_pokemon
  pokemon_list = pokemons.map { |k, v| v }
end
