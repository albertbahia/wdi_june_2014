require_relative 'nurse.rb'
require_relative 'pokemon.rb'
require_relative 'trainer.rb'

pokemon = [
    venusaur = Pokemon.new("venusaur", 3, :grass, 0, 100, 123, 80),
    charizard = Pokemon.new("charizard", 6, :fire, 0, 130, 111, 100),
    pikachu = Pokemon.new("pikachu", 25, :electric, 50, 55, 40, 90),
    blastoise = Pokemon.new("blastoise", 9, :water, 50, 103, 120, 78),
    butterfree = Pokemon.new("butterfree", 12, :bug, 10, 45, 50, 70),
    sandshrew = Pokemon.new("sandshrew", 27, :ground, 50, 75, 85, 40),
    jigglypuff = Pokemon.new("jigglypuff", 39, :fairy, 100, 45, 20, 20),
    machamp = Pokemon.new("machamp", 68, :fighting, 90, 130, 80, 55)
]


ash = Trainer.new('Ash Ketchum', 10, 'Pallet Town'),
misty = Trainer.new('Misty', 11, 'Cerulean City'),
brock  Trainer.new('Brock', 13, 'Pewter City')

jill = Nurse.new("jill", 25, "Pallet Town")
judy = Nurse.new("judy", 27, "Cerulean City")
joy = Nurse.new("joy", 30, "Pewter City")

pokemon.list_pokemon
binding.pry

# puts trainers.trainer_info
