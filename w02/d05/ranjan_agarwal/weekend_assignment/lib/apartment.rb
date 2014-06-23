require_relative('tenant.rb')

class Apartment
  attr_reader(:name,:floor,:price,:sqft,:bedrooms,:bathrooms, :tenants)
  def initialize(name,floor,price,sqft,bedrooms,bathrooms)
    @name = name
    @floor = floor
    @price = price
    @sqft = sqft
    @bedrooms = bedrooms
    @bathrooms = bathrooms
    @tenants = []
  end

  def add_tenant(tenant)
    if tenants.length == bedrooms
      return "You can't add anymore tenants"
    else
      tenants.push(tenant)
    end
  end

  def info
    return "Apartment Name: #{name} | Floor: #{floor} | Price: #{price} | Square
    Footage: #{sqft} | Bedrooms: #{bedrooms} | Bathrooms: #{bathrooms}"
  end

  def list_tenants
      tenant_string = ""
    tenants.map do |tenant|
      tenant_string += "Tenant's Name is: #{tenant.name}"
      tenant_string += "Tenant's Age is: #{tenant.age}"
      tenant_string += "Tenant's Gender is: #{tenant.gender}"
    end
    return tenant_string
  end

end
