def get_trainer
  trainer_names = ["Ash",
                   "Misty",
                   "Brock",
                   "Gary",
                   "Lorelei",
                   "Bruno",
                   "Agatha",
                   "Lance"]
  trainer_ages = [10,25,89,345,21,9001]
  trainer_hometown = ["Pallet Town",
                      "Saffron City",
                      "Cerulean City",
                      "Celadon City",
                      "Cinnabar Island",
                      "Fuschia City",
                      "Goldenrod City"]

    poke_trainer_name = trainer_names.sample
    poke_trainer_age = trainer_ages.sample
    poke_trainer_hometown = trainer_hometown.sample

    return [poke_trainer_name, poke_trainer_age, poke_trainer_hometown]


end

puts get_trainer
