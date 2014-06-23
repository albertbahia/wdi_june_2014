require_relative './apartment.rb'

class Building

  attr_reader(:name, :address, :floors, :apartments)

  def initialize(name, address, floors)
    @name = name
    @address = address
    @floors = floors
    @apartments = []
  end

  def rent_apartment(name, floor, price, sqft, bedrooms, bathrooms)
    @apartments.push(Apartment.new(name, floor, price, sqft, bedrooms, bathrooms))
  end


  def list_apartments
     apartment.each do |tenant|
        return apartment.list_info
    end
  end


end
