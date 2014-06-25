require 'active_record'
require_relative '../lib/trainer.rb'

ActiveRecord::Base.establish_connection({
  database: 'pokemon_db',
  adapter: 'postgresql'
})

trainer_names = %w(Ash Misty Brock Gary Lorelei Bruno Agatha Lance)
trainer_ages = [10,13,15,25,76,32,89,345,21,9001]
trainer_hometowns = ['Pallet Town','Saffron City', 'Cerulean City','Celadon City', 'Cinnabar Island', 'Fuschia City', 'Goldenrod City']


10.times do
  Trainer.create({
      name: trainer_names[rand(8)],
      age: trainer_ages[rand(10)],
      hometown: trainer_hometowns[rand(7)]
  })
end
