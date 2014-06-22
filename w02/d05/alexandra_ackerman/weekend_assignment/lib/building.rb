require_relative './apartment.rb'

class Building

  attr_reader(:name, :address, :floors)

  def initialize(name, address, floors)
    @name = name
    @address = address
    @floors = floors
  end

  def apartments()
    Apartment.new(@name, @floor, @price, @sqft, @bedrooms, @bathrooms)
  end


end
