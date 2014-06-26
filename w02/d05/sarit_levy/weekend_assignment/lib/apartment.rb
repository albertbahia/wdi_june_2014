#There is still 1 failure on the spec for this class and 4 pending methods yet to be written.

class Apartment

  attr_reader(:name, :floor, :price)

  def initialize(name_input, floor_input, price_input, sqftage_input, bedrooms_input, bathrooms_input)
    @name = name_input
    @floor = floor_input
    @price = price_input
    @sqftage = sqftage_input
    @bedrooms = bedrooms_input
    @bathrooms = bathrooms_input
    @tenants = []
  end

  # def name
  #   return @name
  # end
  #
  # def floor
  #   return @floor
  # end
  #
  # def price
  #   return @price
  # end

  def sqft
    return @sqftage
  end

  def bedrooms
    return @bedrooms
  end

  def bathrooms
    return @bathrooms
  end

  def tenants
    return @tenants
  end

  def apartment
    apartment = Apartment.name
  end

  def info
    info_string = "Name: #{@name}\n"
    info_string += "$#{@price} per month\n"
    info_string += "#{@sqftage} sqft.\n"
    return info_string
  end


  def list_tenants
    # list_tenants = lists all of the tenants information' do
  end


  def add_tenant
    # adds a tenant to the apartment
    # does not add more tenants than rooms
  end

end
