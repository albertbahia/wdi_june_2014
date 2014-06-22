class Apartment

  attr_reader(:floor, :name, :price, :sqft, :bathrooms, :bedrooms, :tenants)
  def initialize(initial_floor, initial_name, initial_price, initial_sqft, initial_bedrooms, initial_bathrooms)
    @floor = initial_floor
    @name = initial_name
    @price = initial_price
    @sqft = initial_sqft
    @bedrooms = initial_bedrooms
    @bathrooms = initial_bathrooms
    @tenants = []
  end
end
