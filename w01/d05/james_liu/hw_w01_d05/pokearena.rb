require relative '. /pokemon.rb'
require relative '. /trainer.rb'
require relative '. /nurse.rb'
 
pokemon1 = Pokemon.new ("Snorlax", 1, "sleep", 100, 10, 30, 5)
pokemon2 = Pokemon.new("voltorb",   1, "sleep", 100, 10, 30, 5)
pokemon3 = Pokemon.new("mr_mime",  1, "sleep", 100, 10, 30, 5)
pokemon4 = Pokemon.new("porygon",  1, "sleep", 100, 10, 30, 5)
pokemon5 = Pokemon.new("garchomp",  1, "sleep", 100, 10, 30, 5)
pokemon6 = Pokemon.new("garbador",  1, "sleep", 100, 10, 30, 5)
pokemon7 = Pokemon.new("mew",  1, "sleep", 100, 10, 30, 5)
pokemon8 = Pokemon.new("mewtwo",  1, "sleep", 100, 10, 30, 5)

trainer1 = [pokemon1, pokemon2, pokemon3, pokemon4, pokemon5]
trainer2 = [pokemon4, pokemon5, pokemon6, pokemon7, pokemon8]
trainer3 = [pokemon1, pokemon3, pokemon5, pokemon7, pokemon8]
trainer4 = [pokemon2, pokemon4, pokemon6, pokemon7, pokemon8]
trainer5 = [pokemon3, pokemon4, pokemon5, pokemon6, pokemon7]

james = Trainer.new("James", 28, "Cerritos", trainer1)
andy = Trainer.new("James", 30, "Scranton", trainer2)
jim = Trainer.new("James", 20, "Scranton", trainer3)
dwight = Trainer.new("James", 35, "Scranton", trainer4)
michael_scott = Trainer.new("James", 40, "Scranton", trainer5)

trainer

nurse =  = nurse.new("Angela", 23, "Funky Town")

loop do

puts "*************************************"
puts "*** WELCOME TO THE POKE ARENA! ***"
puts "         PLEASE MAKE A SELECTION!"
puts "1 - "View Trainers"
puts "2 - ""
puts "3 - Quit!"
puts "*************************************"

user_input = gets.chomp()jkhn
