All pokemon in the database

 - Pokemon.all

The id of the pokemon named Onix

- Pokemon.find_by({name: 'Onix'})

The name of the pokemon with an id of 89

- Pokemon.find_by({id: 89})

Find the pokemon with the name 'Nidoran?'. Change the name of the first
pokemon returned to 'Nidoran - male', and the name of the second pokemon
returned to 'Nidoran - female'.

- nidorans = Pokemon.where('name LIKE ?', '%Nidoran%').all
  nidorans[0].update(name: 'Nidoran - Male')
  nidorans[1].update(name: 'Nidoran - Female')

Only the hp of the first 35 pokemon

 - Pokemon.limit(35).pluck("hp")

All pokemon with a speed less than 25 and attack over 30

  - Pokemon.where("speed < 25 AND attack > 30").pluck("name")

The 5 pokemon with the highest happiness level.

  - Pokemon.order(happiness: :desc).first(5)

All pokemon ordered by hp from lowest to highest

  -  Pokemon.order(:hp).pluck("name")
