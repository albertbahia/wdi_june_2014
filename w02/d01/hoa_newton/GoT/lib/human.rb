class Human

	attr_reader(:name, :house, :strength)
	attr_accessor(:hp)

	def initialize (name, house, strength)
		@name = name
		@house = house
		@strength = strength
		@hp = 200
	end

	def introduce
		"My name is #{@name}. I am from the house of #{@house}"
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

	def attack(attacked_person)
		attacked_person.hp = attacked_person.hp - @strength
	end

	def alive?
		if @hp > 0
			true
		else
			false
		end
	end

end
