Homework 03-01

#### Learning Objectives

- Practice using an ORM - ActiveRecord
- Practice creating a database seed file in ruby
- Practice parsing information from a nested collection

# Pokemon!
Your assignment tonight is to setup a database of Pokemon with a little help from your new friend ActiveRecord!

### Step 1 - Create your database/table schema
Create a new database called pokemon_db. Define a schema for a table, called `pokemons`. The `pokemons` table should have:
- a unique id
- a name
- an hp
- an attack
- a defense
- a speed
- moves (stored as a string)
- an image url
- a classification
- a species (pokemon types stored as a string)
- a height
- a happiness

Use this schema to create your `pokemons` table.

### Step 2 - Create your seed file
Provided for you is a file `pokemon_seed.rb` containing a single method. Require this file in a new file titled `pokemon_seed_script.rb`, and store the return of calling the method `get_pokemon` in a variable. Look at the hashes stored inside of the array that is returned and map out how you will access the attributes that you need. There are a lot of unnecessary key-value pairs, so mapping what you need and how to access it is especially important.

Iterate over the array of nested hashes containing pokemon attributes and, using ActiveRecord, create a new database entry for all of the pokemon hashes in the array. At the bottom of the seed script file place a binding.pry.

_the moves should be stored as a string. think about how you can only get the names of the moves_

### Step 3 - Seed your database

Run your `pokemon_seed_script` and seed your database! To make sure that you have done it correctly, play around with your database in pry. If you count the number of pokemon objects there should be 151. If not, drop your table and re-seed your database.

__PROTIP__ : make sure that if you leave pry you comment out the method call so you don't repeatedly seed your database.

### Step 4 - While in pry:
In a separate markdown file write the ActiveRecord commands to return the following (some of the commands we did not use in class, make sure to look at the ActiveRecord documentation):
- All pokemon in the database
- Pokemon.all

- The id of the pokemon named Onix
- onix.select(:id)
- onix = Pokemon.where({name: 'Onix'})

- The name of the pokemon with an id of 89
- random_pokemon = Pokemon.where({id: 89})
- random_pokemon.select(:name)

- Find the pokemon with the name 'Nidoran?'. Change the name of the first pokemon returned to 'Nidoran - male', and the name of the second pokemon returned to 'Nidoran - female'.
- one = Pokemon.find_by({name: 'Nidoran?'})
- one.name = 'Nidoran - male'
- one.name = 'Nidoran - male'
- two.name = 'Nidoran - Female'

- Only the hp of the first 35 pokemon
-

- All pokemon with a speed less than 25 and attack over 30
-

- The 5 pokemon with the highest happiness level.
-

- All pokemon ordered by hp from lowest to highest
-

__Make sure that you test all of your commands in pry using the ActiveRecord class related to your database__
