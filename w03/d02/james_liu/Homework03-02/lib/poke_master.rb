require 'active_record'
require_relative 'pokemon.rb'
require_relative 'trainer.rb'
require 'pry'

ActiveRecord::Base.establish_connection({
    database: 'pokemon_db',
    adapter: 'postgresql'
    })

binding.pry



=begin
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
=end
