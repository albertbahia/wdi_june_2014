class Apartment
  attr_reader :name, :floor, :price, :sqft
  attr_reader :bedrooms, :bathrooms, :tenants

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
    info = "Apartment #{name}\n---------\n"
    info << "Floor #{floor} | $#{price} | #{sqft} sqft\n"
    info << "#{bedrooms} Bedroom/#{bathrooms} Bathroom"
  end

  def list_tenants
    tenant_info = ""
    tenants.each do |tenant|
      tenant_info << tenant.list_info
    end
    tenant_info
  end

  def add_tenant(tenant)
    if tenants.length != bedrooms
      tenants.push(tenant)
    end
  end
end
