
class Human
	
	attr_reader(:name, :house, :strength)
	def initialize(name, house, strength)
		@name = name 
		@house = house 
		@strength = strength
		@hp= 200
	end 
	def hp
		@hp
	end 
	def introduce
		"Introducing #{name} of the house of #{house}"
	end 
	def attack(enemy)
		enemy.hp - self.strength
	end 
	def take_damage(value)
		if self.hp < value 
			return 0 
		elsif value < 0
			return self.hp 
		else 
			self.hp - value	
		end
	end 

	def alive?
		if self.hp.zero?
			return false
		else
			return true 
		end  
	end 
end



