require_relative 'tenant.rb'

class Apartment
  attr_reader(:name, :floor, :price, :sqftage, :bedrooms, :bathrooms, :tenants)
  def initialize(name, floor, price, sqftage, bedrooms, bathrooms)
    @name = name
    @floor = floor
    @price = price
    @sqftage = sqftage
    @bedrooms = bedrooms
    @bathrooms = bathrooms
    @tenants = []
  end

  def add_tenant(tenant)
    if @tenants.length >= @bedrooms
      return "Too many tenants!"
    else
      tenants.push(tenant)
    end
  end

  def info
    return "Name: #{name} // Floor: #{floor} Price: #{price} // Square Footage: #{sqftage} // Bedrooms: #{bedrooms} // Bathrooms: #{bathrooms} // Tenants: #{tenants}"
  end

  def list_tenants
    info_string = ""
    tenants.each { |tenant|
    info_string += ">>Tenant Name: #{tenant.name}"
    info_string += " // Tentant Age: #{tenant.age}"
    info_string += " // Tenant Gender: #{tenant.gender} // "
    }
    return info_string
  end
end
