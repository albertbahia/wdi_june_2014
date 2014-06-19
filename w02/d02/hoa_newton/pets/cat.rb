
class Cat < Pet

	def initialize(name, age, owner)
		super(name, age, owner)
		@hours_slept = 0
	end

	def judge_person(person_name)
		return "#{person_name} is a silly hoomin"
	end

	def sleep
		hours_slept += 1
	end

end