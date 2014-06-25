require_relative 'trainer.rb'
require 'pry'

trainer_names = %w(Ash Misty Brock Gary Lorelei Bruno Agatha Lance)
trainer_ages = [10,13,15,25,76,32,89,345,21,9001]
trainer_hometown = ['Pallet Town','Saffron City', 'Cerulean City','Celadon City', 'Cinnabar Island', 'Fuschia City', 'Goldenrod City']



10.times do |rand_trainer|
  Trainer.create({
    name: trainer_names[rand(8)],
    age: trainer_ages[rand(10)],
    hometown: trainer_hometown[rand(7)]
    })
end

binding.pry
