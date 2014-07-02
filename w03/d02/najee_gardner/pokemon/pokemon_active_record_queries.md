Pokemon.all

Pokemon.find_by({name: 'Onix'}).id

Pokemon.find(28)

nidorans = Pokemon.where({name: 'Nidoran?'})
nidorans.first.update({name: 'Nidoran - male'})
nidorans.last.update({name: 'Nidoran - female'})

Pokemon.pluck(:hp).first(35)

Pokemon.where("speed < 25 AND attack > 30")

Pokemon.order('happiness DESC').first(5)

Pokemon.order('hp ASC')
