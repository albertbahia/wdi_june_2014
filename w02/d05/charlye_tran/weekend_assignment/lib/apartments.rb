require_relative './tenants.rb'

class Apartment
  attr_reader(:name, :floor, :price, :sqft, :bedrooms, :bathrooms, :tenants)
  def initialize(name, floor, price, sqft, bedrooms, bathrooms)
    @name = name
    @floor = floor
    @price = price
    @sqft = sqft
    @bedrooms = bedrooms
    @bathrooms = bathrooms
    @tenants = tenants
  end

  def info
    return ("Apartment: #{name} is on #{floor} floor, costs $#{price}, has #{bedrooms} bedrooms and #{bathrooms} bathrooms.")
  end

  def list_tenants
  end

  def add_tenant(tenant, new_name, new_age, new_gender)
    tenant = Tenant.new(new_name, new_age, new_gender)
    @tenant = tenant
  end
end
