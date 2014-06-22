class Building
	attr_reader(:name, :address, :floors)
	def initialize(name, address, floors)
		@name = name 
		@address = address
		@floors = floors
	end
	
	
end