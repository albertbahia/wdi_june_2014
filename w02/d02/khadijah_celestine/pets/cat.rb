# cat.rb
# june 17
# khadijah

class Cat < Pet
	def initialize(name, age, owner)
		super(name, age, owner)
		@hours_slept = 0
	end

	def judge(name)
		"#{@name} has been judged"
	end

	def sleep()
		@hours_slept += 1
	end

end
