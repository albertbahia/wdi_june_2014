require_relative 'apartment.rb'
require_relative 'tenant.rb'


class Building

  attr_reader(:name, :address, :floors, :apartments)

  def initialize(name, address, floors)
    @name = name
    @address = address
    @floors = floors
    @apartments = []
  end

  def list_apartments
    apartments.each { |apartment|
    return apartment.info
    }
  end

  def rent_apartment(tenant, apartment)
    if apartments.include?(apartment)
      "Apartment has been rented."
    else
      apartment.add_tenant(tenant)
      @apartments.push(apartment)
    end

  end

end
