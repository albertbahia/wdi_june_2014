puts "Pokemon main file"

require './pokemon'
require './trainer'
require './nurse'
# Instantiate 8 pokemon objects
p1 = Pokemon.new("thepoke", 1, "earth", 17, 12, 4)
p2 = Pokemon.new("nextpokey", 2, "earth", 17, 12, 4)

p3 = Pokemon.new("pokey", 3, "wind", 11, 15, 7)
p4 = Pokemon.new("monkope", 4, "wind", 11, 15, 7)
p5 = Pokemon.new("pokey", 5, "wind", 11, 15, 7)

p6 = Pokemon.new("lepoke", 6, "fire", 15, 15, 5)
p7 = Pokemon.new("poker", 7, "fire", 15, 15, 5)
p8 = Pokemon.new("shepok", 8, "fire", 15, 15, 5)

# Two should have 0 hp
p1.damage(99)
p2.damage(99)

p1.decrement()
p2.decrement()

# Two should have 50 hp
50.times do
  p3.decrement
end

for i in 0..50
  p4.decrement
end

# Instantiate a trainer object
# give the trainer 5 pokemon
khad = Trainer.new("Khadijah", 22, "Brooklyn", [p1, p2, p3, p4, p5])
puts khad.info

cele = Nurse.new("KhadijahTheGreat", 22, "Brooklyn")
puts cele.info

cele.heal(khad)
puts khad.info
