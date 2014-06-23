require_relative 'apartment.rb'

class Building

  attr_reader(:name, :address, :floors, :apartments)

  def initialize(name, address, floors)
    @name = name
    @address = address
    @floors = floors
    @apartments = []
  end

  def list_apartments
    list_apartments = "Apartments: #{apartment.name}"
    list_apartments += "Floor: #{apartment.floor}"
    list_apartments += "Price: #{apartment.price}"
    list_apartments += "Sqft: #{apartment.sqft}"
    list_apartments += "Bedrooms: #{apartment.bedrooms}"
    list_apartments += "Bathrooms: #{apartment.bathrooms}"
  end

  def rent_apartment(new_apartment)
    return apartments.push(new_apartment)
  end

end
