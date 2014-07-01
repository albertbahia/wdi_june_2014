require 'Pry'
require_relative 'lib/pet.rb'
require_relative 'lib/cat.rb'
require_relative 'lib/dog.rb'

rufus = Dog.new("Rufus", 12, "Alex", "floopy")

binding.pry
