require 'active_record'
require_relative 'trainer'

ActiveRecord::Base.establish_connection({
  adapter: 'postgresql',
  database: 'pokemon'
})

trainer_names = %w(Ash Misty Brock Gary Lorelei Bruno Agatha Lance)
trainer_ages = [10,13,15,25,76,32,89,345,21,9001]
trainer_hometown = ['Pallet Town','Saffron City', 'Cerulean City','Celadon City', 'Cinnabar Island', 'Fuschia City', 'Goldenrod City']

10.times do
  Trainer.create(
    name: trainer_names.sample,
    age: trainer_ages.sample,
    hometown: trainer_hometown.sample
  )
end
