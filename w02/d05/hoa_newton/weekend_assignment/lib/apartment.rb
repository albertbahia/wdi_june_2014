

class Apartment 
	attr_reader(:name, :floor, :price, :sqft, :bedrooms, :bathrooms, :tenants)

	def initialize(name, floor, price, sqft, bedrooms, bathrooms)
		@floor = floor
		@name = name
		@price = price
		@sqft = sqft
		@bedrooms = bedrooms
		@bathrooms = bathrooms
		@tenants = []
	end

	def add_tenant(tenant)
		if @tenants.length < @bedrooms
			@tenants.push(tenant)
		else
			return "This apartment is full"
		end
	end

	def list_info
		"Apartment: #{@name} \n
		Floor: #{@floor} \n
		Price: #{@price} \n
		Square footage: #{@sqft} \n
		Bedrooms: #{@bedrooms} \n
		Bathrooms: #{@bathrooms}"
	end

	def list_tenants
		tenants_array = @tenants.map do |tenant|
			"Tenant: #{tenant.name}\n
			Age: #{tenant.age}\n
			Gender: #{tenant.gender}"
		end
		return tenants_array.join("\n ")
	end

end