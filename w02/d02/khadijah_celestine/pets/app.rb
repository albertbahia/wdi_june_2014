# app.rb
# june 17
# khadijah


require './pet.rb'


mine = Pet.new("Fido" , "Allison", 12)
puts mine.love_owner

mine.eat("breakfast")
mine.eat("lunch")
mine.eat("dinner")
puts
puts mine.list_foods
