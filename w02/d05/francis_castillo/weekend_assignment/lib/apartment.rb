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
    @tenants = []

    # @apartment = :apartment
    # @rented = false
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

  def list_apt_info
    apt_info  = "Apt_num : #{name} \n"
    apt_info += "Floor : #{floor} \n"
    apt_info += "Price : $#{price} \n"
    apt_info += "Sqft : #{sqft} \n"
    apt_info += "Bdrm : #{bedrooms} \n"
    apt_info += "Baths : #{bathrooms} \n"

  end


  # def @rented
  #   @rented
  # end

end
