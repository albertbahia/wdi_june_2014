- All pokemon in the database
  Pokemon.all

- The id of the pokemon named Onix
  Pokemon.where({name:'Onix'})

- The name of the pokemon with an id of 89
  Pokemon.where({id:89})

- Find the pokemon with the name 'Nidoran?'. Change the name of the first pokemon returned to 'Nidoran - male', and the name of the second pokemon returned to 'Nidoran - female'.
  nido = Pokemon.where({id:29})
  nido.update({name:'Nidoran - male'})

  nidof = Pokemon.where({id:32})
  nidof.update({name:'Nidoran - female'})


- Only the hp of the first 35 pokemon
  Pokemon.where({id:[1..35]}).pluck(:hp)


- All pokemon with a speed less than 25 and attack over 30
  Pokemon.where("speed < 25 AND attack > 30")

- The 5 pokemon with the highest happiness level.  
  very_happy = Pokemon.order(happiness: :desc)
  happiest = very_happy.limit(5)

- All pokemon ordered by hp from lowest to highest
  Pokemon.order('hp')
