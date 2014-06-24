Pomekon.all

Pokemon.find_by({name: 'Onix'})

id_89 = Pokemon.find_by({id: 89}
  id_89.name

Pokemon.where({name: 'Nidoran?'}).first.update({name: 'Nidoran - Male'})
Pokemon.find_by({name: 'Nidoran?'}).update({name: 'Nidoran - Female'})

Pokemon.limit(35).order(hp: :asc)

Pokemon.where('speed <= 25 AND attack >= 30')

Pokemon.limit(5).order(happiness: :asc)

Pokemon.order(hp: :asc)
