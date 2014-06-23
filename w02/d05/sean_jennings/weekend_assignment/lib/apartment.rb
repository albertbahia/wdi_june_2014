class Apartment

  attr_reader(:name, :floor, :price, :sqft, :bedrooms, :bathrooms, :tenants)

  def initialize(name,floor,price,sqft,bedrooms,bathrooms)
      @name = name
      @floor = floor
      @price = price
      @sqft = sqft
      @bedrooms = bedrooms
      @bathrooms = bathrooms
      @tenants = tenants
  end

  def info
    apt_info = "Apt no: #{name},"
    apt_info += " floor: #{floor},"
    apt_info += " price: #{price},"
    apt_info += " sqft: #{sqft},"
    apt_info += " bedrooms: #{bedrooms},"
    apt_info += " bathrooms: #{bathrooms}"
  end


end
