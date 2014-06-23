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

  def rent_apartment(tenant, apartment)
    if apartments.include?(apartment)
      return "Apartment rented."
    else
      apartment.add_tenant(tenant)
      @apartments.push(apartment)
    end
  end

  def list_apartments
    info_string = ""
    apartments.each { |apartment|
    return apartment.info}
  end
end
