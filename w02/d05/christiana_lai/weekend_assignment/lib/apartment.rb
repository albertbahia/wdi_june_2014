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
    return "Name: #{name}, Floor: #{floor}, Price: #{price}, Sqft: #{sqft}, Bedrooms: #{bedrooms}, Bathrooms: #{bathrooms}"
  end

  def list_tenants
    return "Name: #{tenant.name}, Age:#{tenant.age}, Gender: #{tenant.gender}"
    return "Name: #{tenant_2.name}, Age:#{tenant_2.age}, Gender: #{tenant_2.gender}"
    return "Name: #{tenant_3.name}, Age:#{tenant_3.age}, Gender: #{tenant_3.gender}"
  end

  def add_tenant(name, age, gender)
    
  end

end
