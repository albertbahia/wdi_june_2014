
# * Pet
#   * name - string
#   * owner - string, owner's name
#   * age - number
#   * foods_eaten - initialized to empty array
#   * love_owner() - return a string proclaiming love towards owner
#   * eat(food) - push 'food' into the foods_eaten array
#   * list_foods() - return a string containing all the eaten foods
# * Dog
#   * ear_type - A string (Eg. "Floopy", "Upright", "Stubby", "Shaggy")
#   * bark() - Returns a string with a bark in it (eg. "Woof woof")
# * Cat
#   * hours_slept - initialized to 0
#   * sleep() - increments hours_slept by 1
#   * judge_person(person) - Accepts a string 'person' and returns a judgmental string about that person

require 'pry'
require_relative 'Pet.rb'
require_relative 'Cat.rb'
require_relative 'Dog.rb'

binding.pry