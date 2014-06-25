require_relative 'trainers'
require 'pry'

trainer_names = %w(Ash Misty Brock Gary Lorelei Bruno Agatha Lance)
trainer_ages = [10,13,15,25,76,32,89,345,21,9001]
trainer_hometown = ['Pallet Town','Saffron City', 'Cerulean City',
  'Celadon City', 'Cinnabar Island', 'Fuschia City', 'Goldenrod City']

trainer_array = trainer_names.map do |trainer|
  Trainer.create({name: trainer})
end

trainer_array.each do |trainer|
  trainer.age = trainer_ages.sample
  trainer.hometown = trainer_hometown.sample
  trainer.save
end

binding.pry
