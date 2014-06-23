

class Building
	attr_reader(:name, :address, :floors, :apartments)

	def initialize(name, address, floors)
		@name = name
		@address = address
		@floors = floors
		@apartments = []
	end

	def list_apartments
		apartment_list = @apartments.map do |apartment|
			"Apartment: #{apartment.name} \n
			 Floor: #{apartment.floor} \n
			 Price: #{apartment.price} \n
			 Square footage: #{apartment.sqft} \n
			 Bedrooms: #{apartment.bedrooms} \n
			 Bathrooms: #{apartment.bathrooms}"
		end
		return apartment_list.join(', ')
	end

	def rent_apartment(apartment, tenant)
		apartment_to_rent = @apartments.select do |apt|
			apartment == apt 
		end
		apartment_to_rent[0].add_tenant(tenant)
	end

end