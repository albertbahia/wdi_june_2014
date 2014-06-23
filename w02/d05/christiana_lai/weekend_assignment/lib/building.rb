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
    return "Apartments: #{apartment.name}, Floor: #{apartment.floor}, Price: #{apartment.price}, Sqft: #{apartment.sqft}, Bedrooms: #{apartment.bedrooms}, Bathrooms: #{apartment.bathrooms}"
  end

  def rent_apartment(new_apartment)
    return apartments.push(new_apartment)
  end

end
