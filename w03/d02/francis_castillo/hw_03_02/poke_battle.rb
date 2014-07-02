require 'active_record'
require_relative 'pokemon.rb'
require_relative 'trainer.rb'
require 'pry'
#
trnr1 = [Trainer.find(rand(1..10)).name,Pokemon.get_pokemon]
trnr2 = [Trainer.find(rand(1..10)).name, Pokemon.get_pokemon]

def poke_battle(trnr1, trnr2)
   i = 0
   battle_tot = [0,0]

   while i < 6 do
     x = rand(0..(trnr1[1].length-1))
     y = rand(0..(trnr1[1].length-1))
    #  puts x
    #  puts y
     i+=1
   end

   id_1 = Pokemon.find_by({name: trnr1[1][x]}).id
   id_2 = Pokemon.find_by({name: trnr2[1][y]}).id

   while i < 6 do

     if Pokemon.find(id_1).total_attack > Pokemon.find(id_2).total_attack
       trnr1[1].delete_at(x)
       trnr2[1].delete_at(y)
       battle_tot[0] += 1
       i+=1
     elsif Pokemon.find(id_1).total_attack < Pokemon.find(id_2).total_attack
       trnr1[1].delete_at(x)
       trnr2[1].delete_at(y)
       battle_tot[1] += 1
       i+=1
     end
   end

   if battle_tot.index(battle_tot.max) == 0
     return "#{trnr1[0]} wins!!"
   else
     return "#{trnr2[0]} wins!!"
   end
end

ActiveRecord::Base.establish_connection ({
  database: 'pokemon_db',
  adapter: 'postgresql'
  })

binding.pry
