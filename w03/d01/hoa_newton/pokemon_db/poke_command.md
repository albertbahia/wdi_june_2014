
In a separate markdown file write the ActiveRecord commands to return the following (some of the commands we did not use in class, make sure to look at the ActiveRecord documentation):
- All pokemon in the database
- The id of the pokemon named Onix
- The name of the pokemon with an id of 89
- Find the pokemon with the name 'Nidoran?'. Change the name of the first pokemon returned to 'Nidoran - male', and the name of the second pokemon returned to 'Nidoran - female'.
- Only the hp of the first 35 pokemon
- All pokemon with a speed less than 25 and attack over 30
- The 5 pokemon with the highest happiness level.
- All pokemon ordered by hp from lowest to highest

__Make sure that you test all of your commands in pry using the ActiveRecord class related to your database__



Pokemon.all
Pokemon.find_by({name: 'Onix'})    -> 95

id_89 = Pokemon.find_by({id: 89})
id_89.name

Pokemon.where({name: 'Nidoran?'}).first.update({ name: 'Nidoran male'})
Pokemon.where({name: 'Nidoran?'})[1].update({ name: 'Nidoran female'})
