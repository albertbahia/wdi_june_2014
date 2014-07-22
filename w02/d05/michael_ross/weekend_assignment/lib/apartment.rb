require_relative 'tenant.rb'

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
    "Name: #{name}, Floor: #{floor}, Price: #{price}, Square Feet: #{sqft},
    Bedrooms: #{bedrooms}, Bathrooms: #{bathrooms}, Tenants: #{tenants} }"
  end

  def list_tenants
    info_string = ""
    tenants.each { |tenant|
    info_string += "| Tenant Name: #{tenant.name} | "
    info_string += "Tenant Age: #{tenant.age} | "
    info_string += "Tenant Gender #{tenant.gender} |"
    }
    info_string
  end

  def add_tenant(tenant)
    if @tenants.length >= @bedrooms
      "Too many tenants!"
    else
      tenants.push(tenant)
    end
  end

end
