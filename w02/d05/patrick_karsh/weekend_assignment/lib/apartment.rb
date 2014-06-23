
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
		apt_info  = "Apt_num : #{name}"
    	apt_info += "Floor : #{floor}"
	    apt_info += "Price : $#{price}"
	    apt_info += "Sqft : #{sqft}"
	    apt_info += "Bdrm : #{bedrooms}"
	    apt_info += "Baths : #{bathrooms}"
	end 
	def add_tenant(new_tenant)
		if @bedrooms < @tenants.count
			@tenants.push(new_tenant)
		elsif @bedrooms >= @tenants.count
			return "No more tenants can be added"
		end 	
	end 
	def list_tenants
		@tenants
	end 
end 