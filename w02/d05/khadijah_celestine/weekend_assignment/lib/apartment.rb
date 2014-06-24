class Apartment
	attr_reader(:floor, :name, :price, :sqft, :bedrooms, :bathrooms, :tenants)
	def initialize(floor, name, price, sqft, bedrooms, bathrooms)
		@floor = floor
		@name = name
		@price = price
		@sqft = sqft
		@bedrooms = bedrooms
		@bathrooms = bathrooms
		@tenants = Array.new(bedrooms)
	end

	def info
		"#{floor}, #{name}, #{price}, #{sqft}, #{bedrooms}, #{bathrooms} "
	end

	def add_tenant(tenant)
	# if @tenants.count != bedrooms
			@tenants.push(tenant)
	# 		true
	# 	else
	# 		false
	# 	end
		true
	end

	def list_tenants
		str = ""
		tenants.each do |tenant|
			str += tenant.list_info
		end
		str
	end

end
