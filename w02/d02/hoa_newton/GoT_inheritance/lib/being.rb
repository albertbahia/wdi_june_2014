class Being
	attr_reader(:name,:strength, :hp)

	def initialize (name, strength, hp)
		@name = name
		@strength = strength
		@hp = hp
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

	def attack(enermy)
		enermy.take_damage(@strength)
	end

	def alive?
		if @hp > 0
			true
		else
			false
		end
	end

end