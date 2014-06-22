class Apartment

  attr_reader :name, :floor, :price, :sqft, :bedrooms, :bathrooms, :tenants

  def initialize(name, floor, price, sqftage, bedrooms, bathrooms, tenants)
    @name = name
    @floor = floor
    @price = price
    @sqft = sqftage
    @bedrooms = bedrooms
    @bathrooms = bathrooms
    @tenants = tenants
  end

  def info()
    return_string = "Name: #{name} \n"
    return_string += "Floor: #{floor} \n"
    return_string += "Price: $#{price} \n"
    return_string += "Square Footage: #{sqft} \n"
    return_string += "Bedrooms: #{bedrooms} \n"
    return_string += "Bathrooms: #{bathrooms} \n"
  end

  def list_tenants()
    return_string = ""
    tenants.each do |tenant|
      return_string += tenant.list_info()
    end
    return_string
  end

  def add_tenant(tenant)
    tenants.length < bedrooms ? tenants.push(tenant) : "Apartment is already full."
  end



end
