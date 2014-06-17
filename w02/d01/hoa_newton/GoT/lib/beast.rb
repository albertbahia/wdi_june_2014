class Beast

	attr_reader(:name, :species, :strength, :hp)
	attr_accessor(:hp)

	def initialize(name, species, strength)
		@name = name
		@species = species
		@strength = strength
		@hp = 100
	end

	def take_damage(damage)
		if damage < 0
			return @hp
		elsif damage >= @hp
			@hp = 0
		else
		    @hp -= damage
		end		
	end

	def attack(attacked_ghost)
		attacked_ghost.hp = attacked_ghost.hp - @strength
	end

	def alive?
		if @hp > 0
			true
		else
			false
		end
	end

end
