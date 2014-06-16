require_relative './pokeman.rb'
require_relative './nurse.rb'
require_relative './trainer.rb'


#Pokeman Objects
all_pokemans = [
oddish = Pokeman.new("Oddish", 043, "Grass/Poison", 50, "Chlorophyll", "Run Away", 2),
eevee = Pokeman.new("Eevee", 133, "Normal", 50, "Anticipation", "Adaptibility", 4),
mudkip = Pokeman.new("Mudkip", 258, "Water", 100, "Torrent", "Damp", 4),
exeggcute = Pokeman.new("Exeggcute", 102, "Grass/Psychic", 0, "Chlorophyll", "Harvest", 1),
swampert = Pokeman.new("Swampert", 260, "Water/Ground", 100, "Torrent", "Damp", 6),
espeon = Pokeman.new("Espeon", 196, "Psychic", 100, "Sychronize", "Magic Bounce", 5),
minun = Pokeman.new("Minun", 312, "Electric", 0, "Minus", "Volt Absorb", 3),
plusle = Pokeman.new("Plusle", 311, "Electric", 100, "Plus", "Lightning Rod", 3)
]

#Trainer Object
trainer1 = Trainer.new("Fen", 22, "NYC", caught_pokemans = [eevee, mudkip, exeggcute, swampert, minun])

#Nurse Object
nurse1 = Nurse.new("Ginko", 25, "Hokkaido")


#Methods
def title_print(title)
  puts "-"*80
  puts "* "*3+" #{title} "+"* "*3
  puts "-"*80
end

#Display all Trainer Stats
def display_trainer(trainer_selection)
  puts trainer_selection.trainer_info
  puts()
end


def display_nurse(nurse_selection)
  puts nurse_selection.nurse_info
  puts()
end


#Display all Pokeman Stats
def display_monsters(monster_list)
  monster_list.each do |monster|
    puts monster.poke_info
    puts()
  end
end


#Printing All to Console
puts "-"*80
puts "~*~ "*13
puts " "*12 + "Let Me Show You My Pokemans" + " "*12
puts "~*~ "*13
title_print("Pokemans")
display_monsters(all_pokemans)

title_print("Trainers & Their Pokemans")
display_trainer(trainer1)
puts "#{trainer1.name}'s Pokemans:"
puts trainer1.pokedeck


title_print("Nurses")
display_nurse(nurse1)

#----------------------
#Display A Trainer's Pokemans from input (option for user selection)
# def pokedeck(trainer_selection)
#   puts "#{trainer_selection.name}'s Pokemans:"
#   puts trainer_selection.pokemans
# end

#Display Single Pokeman's Stats (option for user selection)
# def display_monster(monster_selection, monster_collection)
#   monster_index = monster_collection.index do |monster|
#     monster.name == monster_selection
#   end
#   monster_collection[monster_index].poke_info
# end
