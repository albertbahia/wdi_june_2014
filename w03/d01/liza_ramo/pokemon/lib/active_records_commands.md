- All pokemon in the database

  Pokemon.all

or to return all the names of the pokemon:

  Pokemon.pluck(:name)

- The id of the pokemon named Onix

  Pokemon.find_by({ name: 'Onix'}).id

- The name of the pokemon with an id of 89

  Pokemon.find(89).name

- Find the pokemon with the name 'Nidoran?'. Change the name of the
    first pokemon returned to 'Nidoran - male', and the name of the
    second pokemon returned to 'Nidoran - female'.

  MALE:
  male = Pokemon.find_by({ name: 'Nidoran?'})
  -and-
  male.update({ name: 'Nidoran - male'})  

  FEMALE:
  female = Pokemon.find_by({ name: 'Nidoran?'})
  -and-
  female.update({ name: 'Nidoran - female'})


- Only the hp of the first 35 pokemon

  Pokemon.limit(35).order(hp: :asc)

- All pokemon with a speed less than 25 and attack over 30

  Pokemon.where('speed <= 25 AND attack >= 30')

- The 5 pokemon with the highest happiness level.

  Pokemon.limit(5).order(happiness: :desc)

- All pokemon ordered by hp from lowest to highest

  Pokemon.order(hp: :asc)
