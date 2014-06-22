require_relative '../lib/building'
require_relative '../lib/tenant'
class Apartment 

  def initialize (name, floor, price, sqft, bedrooms, bathrooms)
    @name = name
    @floor = floor
    @price = price
    @sqft = sqft
    @bedrooms = bedrooms
    @bathrooms = bathrooms
    @tenants = Tenant.new

  end

  def name
    @name
  end

  def floor
    @floor
  end

  def price
    @price
  end

  def sqft
    @sqft
  end

  def bedrooms
    @bedrooms
  end

  def bathrooms
    @bathrooms
  end

  def tenants
    @tenants
  end


end
