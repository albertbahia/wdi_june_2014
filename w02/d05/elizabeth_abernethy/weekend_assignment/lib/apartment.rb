class Apartment < Building

  attr_reader(:floor, :price, :sqft, :num_bedrooms, :num_bathrooms)

  def initialize(name, address, floor, price, sqft, num_bedrooms, num_bathrooms)
    @floor = floor
    @price = price
    @sqft = sqft
    @num_bedrooms = num_bedrooms
    @num_bathrooms = num_bathrooms
    super(name, address)
  end
end
