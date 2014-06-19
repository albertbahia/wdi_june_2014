class Beast
	attr_reader(:name, :species, :strength)
	def initialize(name, species, strength)
		@name = name 
		@species = species
		@strength = strength
		@hp = 100
	end 
	def hp 
		@hp
	end 
	def take_damage(value)
		if self.hp < value 
			return 0 
		elsif value < 0
			return self.hp 
		else 
			return self.hp - value	
		end
	end 
	def attack(enemy)
		enemy.hp -= self.strength
	end 
	def alive?
		if self.hp.zero?
			return false
		else
			return true 
		end  
	end  
end

