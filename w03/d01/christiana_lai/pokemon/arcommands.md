1. Pokemon.all
2. Pokemon.where({name:'Onix'})
3. Pokemon.where({id:89})
4. Pokemon.where({name:'Nidoran?'})

nido=Pokemon.find_by({id:20})
nido.update(name:'Nidoran - male')

nido2=Pokemon.find_by({id:32})
nido.update(name:'Nidoran - female')

5. Pokemon.where(id:[1..35]).pluck(:hp)
6. Pokemon.where("speed < 25 AND attack > 30")
7. Happy = Pokemon.order(happiness: :desc)
Happiest = Happy.limit(5)

8. Pokemon.order('hp')
