require_relative('building')


class Apartment < Building
  attr_reader(:name, :floor, :price, :sqft, :bedrooms, :bathrooms, :tenants)
  def initialize(name, floor, price, sqft, bedrooms, bathrooms)
    @name = name
    @floor = floor
    @price = price
    @sqft = sqft
    @bedrooms = bedrooms
    @bathrooms = bathrooms
    @tenants = []
    @info = info
    @list_tenants = list_tenants
  end

  def info
    @floor = floor.to_s
    @price = price.to_s
    @sqft = sqft.to_s
    @bedrooms = bedrooms.to_s
    @bathrooms = bathrooms.to_s
    return "Name: #{name}\n Floor: #{floor}\n Price: #{price}\n Square Footage: #{sqft}\n Bedrooms: #{bedrooms}\n Bathrooms: #{bathrooms}"
  end

  def list_tenants
    # tenant.instance_variable_get(:@name)
  end

end
