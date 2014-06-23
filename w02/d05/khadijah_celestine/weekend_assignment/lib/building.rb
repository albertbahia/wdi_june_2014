class Building

	attr_reader(:name, :address, :floors, :apartments)
	def initialize(name, address, floors)
		@name = name
		@address = address
		@floors = floors
		@apartments = {}
	end

	def add_apartment(apartment)
		if @apartments.has_key?(apartment.name)
			false
		else
			@apartments[apartment.name] = ""
			true
		end
	end

	def rent_apartment(apartment, tenant)
		if @apartments.has_key?(apartment.name)
			apartment.add_tenant(tenant)
			true
		else
			false
		end
	end
end
