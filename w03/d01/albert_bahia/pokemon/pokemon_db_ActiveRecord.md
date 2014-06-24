In a separate markdown file write the ActiveRecord commands to return the following (some of the commands we did not use in class, make sure to look at the ActiveRecord documentation):

- All pokemon in the database
Pokemon.all


- The id of the pokemon named Onix
Pokemon.find_by({name: 'Onix'})


- The name of the pokemon with an id of 89
Pokemon.find(89)


- Find the pokemon with the name 'Nidoran?'. Change the name of the first pokemon returned to 'Nidoran - male', and the name of the second pokemon returned to 'Nidoran - female'.

Pokemon.where({name: 'Nidoran?'})

poke = Pokemon.find(29)
poke.update(name: 'Nidoran - male')

poke2 = Pokemon.find(32)
poke2.update(name: 'Nidoran - female')


- Only the hp of the first 35 pokemon



- All pokemon with a speed less than 25 and attack over 30
- The 5 pokemon with the highest happiness level.
- All pokemon ordered by hp from lowest to highest
