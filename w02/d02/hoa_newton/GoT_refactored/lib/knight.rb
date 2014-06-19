require_relative('./human.rb')
require_relative('./king.rb')
require 'pry'
class Knight < Human
	attr_reader(:sword_name)
	def initialize(name, house, sword_name)
		super(name, house, strength)
		@hp = 500
		@sword_name = sword_name
		@strength = 50
	end

	def pledge_loyalty(king)
		if king.is_a?(King)
			@king = king 
			return true
		else
			return false
		end
	end

	def king_name
		if @king.nil?
			nil
		else
			@king.name
		end
	end

	def introduce()
		if @king.nil?
			super() + "I am honorable"
		else
			super() + "I am honorable and loyal to #{@king.name}"
		end
	end

end
