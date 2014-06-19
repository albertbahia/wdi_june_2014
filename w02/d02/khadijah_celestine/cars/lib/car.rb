# car.rb
# june 17
# khadijah

class Car
	attr_reader(:hp, :fuel)
	def initialize(hp, fuel)
		@hp = hp < 1 ? 1 : hp
		@fuel = fuel < 0 ? 0 : fuel > 5 ? 5 : fuel
	end

	def rev
		puts "REV"
	end

	def drive
		puts "DRIVE"
	end

end
