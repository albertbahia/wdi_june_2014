class Apartment
  attr_reader :name, :floor, :price, :sqft
  attr_reader :bedrooms, :bathrooms, :tenants

  def initialize(name, floor, price, sqft, bedrooms, bathrooms)
    @name = name
    @floor = floor
    @price = price
    @sqft = sqft
    @bedrooms = bedrooms
    @bathrooms = bathrooms
    @tenants = []
  end
end
