class Apartment
	attr_reader(:floor, :name, :price, :sqft, :bedrooms, :bathrooms, :tenants)
	def initialize(floor, name, price, sqft, bedrooms, bathrooms)
		@floor = floor
		@name = name
		@price = price
		@sqft = sqft
		@bedrooms = bedrooms
		@bathrooms = bathrooms
	end

end
