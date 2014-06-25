require_relative './lib/trainer.rb'
trainer_names = %w(Ash Misty Brock Gary Lorelei Bruno Agatha Lance)
trainer_ages = [10,13,15,25,76,32,89,345,21,9001]
trainer_hometown = ['Pallet Town','Saffron City', 'Cerulean City','Celadon City', 'Cinnabar Island', 'Fuschia City', 'Goldenrod City']

count = 0

loop do

  if count <= 10
    name = trainer_names.shuffle.sample
    age = trainer_ages.shuffle.sample
    hometown = trainer_hometown.shuffle.sample
    Trainer.create(name: name, age: age, hometown: hometown)
    count += 1
  else
    break
  end

end
