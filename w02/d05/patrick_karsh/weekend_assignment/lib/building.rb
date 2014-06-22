class Building
	attr_reader(:name, :address, :floors, :apartments)
	def initialize(name, address, floors)
		@name = name 
		@address = address
		@floors = floors
		@apartments = []
	end
	def list_apartments 
		return @apartments 
	end 
	
end