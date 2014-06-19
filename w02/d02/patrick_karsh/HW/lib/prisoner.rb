require_relative 'human.rb'
class Prisoner < Human 
	attr_reader(:jumpsuit)
	def initialize(name, age, gender, health, jumpsuit)
		super(name, age, gender, health)
		@jumpsuit = jumpsuit
end 