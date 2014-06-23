require_relative './tenant.rb'

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

  def add_tenant(name, age, gender)
    @tenants.push(Tenant.new(name, age, gender))
  end

  def list_tenants
    tenants.each do |tenant|
      return tenant.list_info
  end

end

  def info()
    info_string = "Name: #{name}, "
    info_string += "Floor: #{floor}, "
    info_string += "Price: #{price}, "
    info_string += "SQFT: #{sqft}, "
    info_string += "Bedrooms: #{bedrooms}, "
    info_string += "Bathrooms: #{bathrooms}"
  end

end
