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
    info = "Name: #{name}"
    info += "Floor: #{floor}"
    info += "Price: #{price}"
    info += "Sqft: #{sqft}"
    info += "Bedrooms: #{bedrooms}"
    info += "Bathrooms: #{bathrooms}"
  end

  def list_tenants
    list_tenants = "Name: #{tenant.name}"
    list_tenants += "Age:#{tenant.age}"
    list_tenants += "Gender: #{tenant.gender}"
    list_tenants += "Name: #{tenant_2.name}"
    list_tenants += "Age:#{tenant_2.age}"
    list_tenants += "Gender: #{tenant_2.gender}"
    list_tenants += "Name: #{tenant_3.name}"
    list_tenants += "Age:#{tenant_3.age}"
    list_tenants += "Gender: #{tenant_3.gender}"
  end

  def add_tenant

  end

end
