require_relative 'human.rb'
class Guard < Human 
	attr_reader(:good_or_evil)
	def initialize(name, age, gender, health, good_or_evil)
		super(name, age, gender, health)
		@good_or_evil = good_or_evil
	end 
end 