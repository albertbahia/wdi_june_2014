require_relative './tenant.rb'
require_relative './apartment.rb'

class Building

  attr_reader(:name, :address, :floors, :apartments)
  def initialize(initial_name, initial_address, initial_floors)
    @name = initial_name
    @address = initial_address
    @floors = initial_floors
    @apartments = []
  end

  def list_apartments
    apt_list = " "
    self.apartments.each do |apt_object|
      apt_list += apt_object.info + ", "
    end
    return apt_list
  end

  def rent_apartment(tenant_acquired, apartment_rented) #expecting Tenant object and Apartment object
    if apartment_rented.bedrooms > apartment_rented.tenants.length
      apt_occupied = self.apartments.select do |apt_obj|
        apt_obj == apartment_rented
      end
      tenant_acquired.acquire_apt(apt_occupied)
      return tenant_acquired.apartment
    else
      "Apartment already occupied."
    end
  end

end
