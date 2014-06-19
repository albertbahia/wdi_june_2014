require_relative('./human.rb')
class King < Human
	attr_reader(:realm)

	def initialize(name, house, realm)
		super(name, house, strength)
		@realm = realm
		@hp = 1000
		@strength = 200
	end

	def introduce()
		super() + " I am just a noble king of realm #{@realm}"
	end
	
end