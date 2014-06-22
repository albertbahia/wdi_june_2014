class Apartment
  attr_reader(:name, :floor, :price, :sqft, :bedrooms, :bathrooms)
  def initialize(name, floor, price, sqft, bedrooms, bathrooms)
    @name = name
    @floor = floor
    @price = price
    @sqft = sqft
    @bedrooms = bedrooms
    @bathrooms = bathrooms
  end
end
