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
    information = "Name: #{name},"
    information += "Floors: #{floor},"
    information += "Price: #{price},"
    information += "Square Feet: #{sqft},"
    information += "Bedrooms: #{bedrooms},"
    information += "Bathrooms: #{bathrooms}."
  end

  def list_tenants
    tenant_list = "Tenants: #{tenants}."
  end

  def add_tenant(tenant_to_add)
      if tenants.count < bedrooms
        tenants.push(tenant_to_add)
      end
  end

end
