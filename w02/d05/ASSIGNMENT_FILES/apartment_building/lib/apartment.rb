class Apartment

  attr_reader :name, :floor, :price, :sqft, :bedrooms, :bathrooms, :tenants
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
    info = "#{name} | Price: #{price}\n"
    info += "#{sqft} sqft \n"
    info += "Beds: #{bedrooms} | Baths: #{bathrooms}"
  end

  def list_tenants
    @tenants.map { |tenant| tenant.list_info }.join("/n")
  end

  def add_tenant(tenant_to_add)
    if tenants.count < bedrooms
      @tenants.push(tenant_to_add)
      tenant_to_add.apartment = name
    end
  end

end
