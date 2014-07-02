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
    info = "Name: #{@name}\n"
    info += "Floor: #{@floor.to_s}\n"
    info += "Price: #{@price.to_s}\n"
    info += "Square Footage: #{@sqft.to_s}\n"
    info += "Bedrooms: #{@bedrooms.to_s}\n"
    info += "Bathrooms: #{@bathrooms.to_s}\n"
    info += "Tenants: #{@tenants.to_s}"
  end

  def add_tenant(tenant_to_add)
    if tenants.length < @bedrooms
      @tenants.push(tenant_to_add)
    else
      "Not enough rooms to add tenant"
    end
  end

  def list_tenants
    tenant_list = tenants.map do |tenant|
      tenant.list_info
    end
  end

end
