- All pokemon in the database
Pokemon.all
- The id of the pokemon named Onix
Pokemon.find_by(name: 'Onix').id
- The name of the pokemon with an id of 89
Pokemon.find_by(id: 89).name
- Find the pokemon with the name 'Nidoran?'. Change the name of the first pokemon returned to 'Nidoran - male', and the name of the second pokemon returned to 'Nidoran - female'.
nidorans = Pokemon.find_by(name: 'Nidoran?')
nidorans[0].name = 'Nidoran - male'
nidorans[0].save
nidorans[1].name = 'Nidoran - female'
nidorans[1].save
- Only the hp of the first 35 pokemon
Pokemon.limit(35).map(&:hp)
- All pokemon with a speed less than 25 and attack over 30
Pokemon.where("speed < '25' AND attack > '30'")
- The 5 pokemon with the highest happiness level.
Pokemon.order(happiness: :desc).limit(5)
- All pokemon ordered by hp from lowest to highest
Pokemon.order(hp: :asc)