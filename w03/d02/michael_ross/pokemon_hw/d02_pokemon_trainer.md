Homework 03-02

#### Learning Objectives
- Practice utilizing an ORM - ActiveRecord
- Practice establishing/utilizing many-to-many table relationships
- Practice writing ruby scripts to seed a database
- Practice defining class and instance methods
- Self-Learning

# Trainers
Tonight your assignment is to take a deeper dive into the world of Pokemon!

### Step 1 - Schema and tables for Trainers
Define a schema for a new table for trainers. A trainer should have:
- a unique id
- a name
- an age
- a hometown

Once you have defined your schema for the trainers table, load the table into your pokemon database. Next, define a schema for your join table linking the pokemon and trainer tables. The Trainer-Pokemon relationship is a many-to-many relationship. Load that table into your pokemon database.

### Step 2 - Seed file for Trainers
Create a seed file for 10 new trainers. This file should make use of the following arrays to create *random* attributes for the new trainers you will add to your database.

```ruby
trainer_names = %w(Ash Misty Brock Gary Lorelei Bruno Agatha Lance)
trainer_ages = [10,13,15,25,76,32,89,345,21,9001]
trainer_hometown = ['Pallet Town','Saffron City', 'Cerulean City','Celadon City', 'Cinnabar Island', 'Fuschia City', 'Goldenrod City']
```
Place a binding.pry at the end of the seed file. Make sure the trainers were added to the database.

### Step 3 - Pokemon and Trainer Methods
Define the following methods in your Pokemon class
- a class method `get_pokemon`, similar to the `.where` and `.all` methods, that will select 6 random pokemon from the database and return them in an array
  - [Link Love - Class v Instance Methods](http://www.railstips.org/blog/archives/2009/05/11/class-and-instance-methods-in-ruby/)
- an instance method, `whos_that_pokemon` that will return a string listing the id, name, hp, attack, defense, and speed of a pokemon object
- an instance method `total_attack` that will return the result of the following maths:
  - 1/2 the pokemons attack plus 1/4 the pokemons speed minus 1/5 the pokemons defense

Define the following methods in your trainer class
- an instance method, `whos_that_trainer` that will return the trainer's stats
- an instance method, `choose_pokemon` that will add pokemon objects to the trainer's pokemons array (it should take an array of pokemon as an argument).

Create a `main.rb` file to test out these methods in pry. You should be able to retrieve trainers from the database, select random pokemon, and assign them to a trainer.

### Step 4 - Self-Learning
__MANDATORY__

Since we are moving into the realm of the Internet it's time to brush up on our HTML/CSS skills. Read through the following:
- [Intro to HTML/CSS](http://learn.shayhowe.com/html-css/building-your-first-web-page/)
- [HTML](http://learn.shayhowe.com/html-css/getting-to-know-html/)
- [Forms](http://learn.shayhowe.com/html-css/building-forms/)
- [CSS](http://learn.shayhowe.com/html-css/getting-to-know-css/)

### BONUS - Battle Method
In a file titled `poke_battle` perform the following actions:
- Retrieve two random trainers from the database.
- Have each trainer choose 6 pokemon
- Define a method that will accept two trainer objects and make them fight!
  - each of the trainer's pokemon should be pitted against each other one at a time.
  - whichever pokemon has the highest result for it's total attack is the winner and a statement detailing which pokemon one should be printed.
  - at the end a statement should be printed stating the trainer with the most winning pokemon.
 
