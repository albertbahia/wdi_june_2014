require 'active_record'
require './trainer.rb'
#require 'pry'


trainer_names = ['Ash', 'Misty', 'Brock', 'Gary', 'Lorelei', 'Bruno', 'Agatha', 'Lance']
trainer_ages = [10,13,15,25,76,32,89,345,21,9001]
trainer_hometown = ['Pallet Town','Saffron City', 'Cerulean City',
  'Celadon City', 'Cinnabar Island', 'Fuschia City', 'Goldenrod City']


10.times do |new_trainer|
  new_trainer = Trainer.create({
    name: trainer_names.sample.to_s,
    age: trainer_ages.sample,
    hometown: trainer_hometown.sample.to_s
    })
end


#binding.pry
