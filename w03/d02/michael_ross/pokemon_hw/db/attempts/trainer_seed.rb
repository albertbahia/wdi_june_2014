def poke_trainer

trainer_names = %w(Ash Misty Brock Gary Lorelei Bruno Agatha Lance)
trainer_ages = [10, 13, 15, 25, 76, 32, 89, 345, 21, 9001]
trainer_hometown = [
  'Pallet Town',
  'Saffron City',
  'Cerulean City',
  'Celadon City',
  'Cinnabar Island',
  'Fuschia City',
  'Goldenrod City'
  ]

t_name = trainer_names.sample
puts t_name
t_age = trainer_ages.sample
puts t_age
t_hometown = trainer_hometown.sample
puts t_hometown

[t_name, t_age, t_hometown]

end

puts poke_trainer
