require_relative 'building.rb'
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

  def add_tenant(new_tenant)
    if @bedrooms > @tenants.count
      @tenants.push(new_tenant)
    elsif @bedrooms <= @tenants.count
      "This apartment is full. No more tenants can be added."
    end
  end

  def info()
    info_string = "Name: #{name}\n"
    info_string += "Floor: #{floor}\n"
    info_string += "Price: #{price}\n"
    info_string += "SqFt: #{sqft}\n"
    info_string += "Bedrooms: #{bedrooms}\n"
    info_string += "Bathrooms: #{bathrooms}\n"
  end

  def list_tenants()
    tenants.each do |tenant|
      puts tenant.list_info
    end
  end

end
