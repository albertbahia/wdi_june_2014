require 'active_record'
require 'pry'
require_relative 'trainer.rb'

ActiveRecord::Base.establish_connection ({
  database: 'pokemon_db',
  adapter: 'postgresql'
  })

trainer_names = %w(Ash Misty Brock Gary Lorelei Bruno Agatha Lance)
trainer_ages = [10,13,15,25,76,32,89,345,21,9001]
trainer_hometown = ['Pallet Town','Saffron City', 'Cerulean City','Celadon City', 'Cinnabar Island', 'Fuschia City', 'Goldenrod City']
#seed file method
  # def trainer_script(arr1,arr2,arr3)
  #
  # i = 0
  #   while i < 10 do
  #     x = rand(0..7)
  #     y = rand(0..9)
  #     z = rand(0..6)
  #       Trainer.create({
  #         name: arr1[x],
  #         age: arr2[y],
  #         hometown: arr3[z]
  #         })
  #     i+=1
  #   end
  # end

  trainer_script(trainer_names, trainer_ages, trainer_hometown)

binding.pry
