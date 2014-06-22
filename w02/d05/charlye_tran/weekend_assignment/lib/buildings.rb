#require 'pry'
require_relative './apartments.rb'
require_relative './tenants.rb'
class Building
  attr_reader(:name, :address, :floors, :apartments)
  def initialize(name, address, floors)
    @name = name
    @address = address
    @floors = floors
    @apartments = []
  end

  def add_apartment(apartment)
    @apartments.push(apartment)
  end

  def rent_apartment(apartment_to_be_rented, new_tenant)
    if @apartments.include?(apartment_to_be_rented)
      return ("Someone already lives in that apartment.")
    else
      @apartments.push(apartment_to_be_rented, new_tenant)
      return "#{@apartments[0]} has been rented to #{new_tenant.name} #{new_tenant.age} #{new_tenant.gender}."
    end
  end

  def list_apartments
      return ("#{@apartments[0].name} #{@apartments[0].floor} #{@apartments[0].price} #{@apartments[0].sqft} #{@apartments[0].bedrooms} #{@apartments[0].bathrooms} #{@apartments[0].tenants}")
  end
end
# => binding.pry
