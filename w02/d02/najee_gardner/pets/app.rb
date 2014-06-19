require 'pry'
require_relative 'lib/pet.rb'
require_relative 'lib/dog.rb'
require_relative 'lib/cat.rb'

cat = Cat.new("mysty", "tati", 5, 0)
dog = Dog.new("houdini", "will", 2, "Floppy")

binding.pry
