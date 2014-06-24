# In a separate markdown file write the ActiveRecord commands to return the following (some of the commands we did not use in class, make sure to look at the ActiveRecord documentation):

- All pokemon in the database
Pokemon.all
Pokemon.name

- The id of the pokemon named Onix
onix = Pokemon.where({name: 'Onix'})
onix.select(:id)

- The name of the pokemon with an id of 89
mystery = Pokemon.where({id: 89})
mystery.select(:name)

- Find the pokemon with the name 'Nidoran?'. Change the name of the first pokemon returned to 'Nidoran - male', and the name of the second pokemon returned to 'Nidoran - female'.
one = Pokemon.find_by({name: 'Nidoran?'})
one.name= 'Nidoran - male'

two = Pokemon.find_by({name: 'Nidoran?'})
two.name= 'Nidoran - female'


- Only the hp of the first 35 pokemon
Pokemon.limit(35).order(hp: :asc)

- All pokemon with a speed less than 25 and attack over 30
Pokemon.where('speed <= 25 AND attack >= 30')

- The 5 pokemon with the highest happiness level.
Pokemon.limit(5).order(happiness: :asc)

- All pokemon ordered by hp from lowest to highest
Pokemon.all.order(hp: :asc)
