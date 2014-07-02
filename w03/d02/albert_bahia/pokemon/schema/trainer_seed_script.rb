require_relative '../lib/trainer.rb'
require 'pry'


trainer_names = %w(Ash Misty Brock Gary Lorelei Bruno Agatha Lance)
trainer_ages = [10,13,15,25,76,32,89,345,21,9001]
trainer_hometown = ['Pallet Town','Saffron City', 'Cerulean City','Celadon City', 'Cinnabar Island', 'Fuschia City', 'Goldenrod City']


# trainer_array = [trainer_names, trainer_ages, trainer_hometown]

trainer_ages.each do |age|
  Trainer.create ({
    name: trainer_names.sample,
    age: age,
    hometown: trainer_hometown.sample
  })


end

binding.pry
