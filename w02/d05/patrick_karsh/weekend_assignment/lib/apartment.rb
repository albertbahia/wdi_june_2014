class Apartment
	attr_reader(:name, :floor, :price, :sqft, :bedrooms, :bathrooms, :tenants)
	def initialize(name, floor, price, sqft, bedrooms, bathrooms)
		@name = name
		@floor = floor
		@price = price 
		@sqft = sqft
		@bedrooms = bedrooms
		@bathrooms = bathrooms
		@tenants = []
	end 
	def info
		"Name: #{name}, Floor: #{floor}, Price: #{price}, SQFTage:#{sqft}, Beds #{bedrooms}, Baths#{bathrooms}" 
	end 
	def add_tenant(new_tenant)
		@tenants.push(new_tenant)
	end 
	def list_tenants
		return @tenants
	end 


end 