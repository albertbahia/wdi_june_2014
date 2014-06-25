def get_trainer
  trainer_names = ['Ash',
                  'Misty',
                  'Brock',
                  'Gary',
                  'Lorelei',
                  'Bruno',
                  'Agatha',
                  'Lance']

  trainer_ages = [10,13,15,25,76,32,89,34,21,901]

  trainer_hometowns = ['Pallet Town',
                      'Saffron City',
                      'Cerulean City',
                      'Celadon City',
                      'Cinnabar Island',
                      'Fuschia City',
                      'Goldenrod City']

                      t_names = trainer_names.sample
                      t_ages = trainer_ages.sample
                      t_hometowns = trainer_hometowns.sample
                      return [t_names, t_ages, t_hometowns]
end
