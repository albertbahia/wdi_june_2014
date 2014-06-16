require_relative './pokeman.rb'
require_relative './nurse.rb'
require_relative './trainer.rb'


#Pokeman Objects
all_pokemans = [
  Pokeman.new("Oddish", 043, "Grass/Poison", 50, "Chlorophyll", "Run Away", 2),
  Pokeman.new("Eevee", 133, "Normal", 50, "Anticipation", "Adaptibility", 4),
  Pokeman.new("Mudkip", 258, "Water", 100, "Torrent", "Damp", 4),
  Pokeman.new("Exeggcute", 102, "Grass/Psychic", 0, "Chlorophyll", "Harvest", 1),
  Pokeman.new("Swampert", 260, "Water/Ground", 100, "Torrent", "Damp", 6),
  Pokeman.new("Espeon", 196, "Psychic", 100, "Sychronize", "Magic Bounce", 5),
  Pokeman.new("Minun", 312, "Electric", 0, "Minus", "Volt Absorb", 3),
  Pokeman.new("Plusle", 311, "Electric", 100, "Plus", "Lightning Rod", 3)
]

#Trainer Objects
trainer1 = Trainer.new("Fen", 22, "NYC", caught_pokemans = [all_pokemans[2].name, all_pokemans[4].name, all_pokemans[6].name])


#Display all Trainer Stats
def display_trainer(trainer_selection)
  puts trainer_selection.trainer_info
  puts()
end

#Display A Trainer's Pokemans from input (option for user selection)
def pokedeck(trainer_selection)
  puts "#{trainer_selection.name}'s Pokemans:"
  puts trainer_selection.pokemans
end

#Display all Pokeman Stats
def display_monsters(monster_list)
  monster_list.each do |monster|
    puts monster.poke_info
    puts()
  end
end

#Display Single Pokeman's Stats (option for user selection)
# def display_monster(monster_selection, monster_collection)
#   monster_index = monster_collection.index do |monster|
#     monster.name == monster_selection
#   end
#   monster_collection[monster_index].poke_info
# end


#Display Action Area

display_monsters(all_pokemans)
#OR
#puts display_monster("Mudkip", all_pokemans)

display_trainer(trainer1)

pokedeck(trainer1)
#OR
#puts trainer1.pokedeck.split.
