require 'pry'
# require_relative './tenant.rb'


class Apartment

  attr_reader(:name, :floor, :price, :sqft, :bedrooms, :bathrooms, :tenants)

  def initialize(name, floor, price, sqft, bedrooms,bathrooms)
    @name = name
    @floor = floor
    @price = price
    @sqft = sqft
    @bedrooms = bedrooms
    @bathrooms = bathrooms
    @tenants = []
  end

  def info(apartment)
    return apartment
  end

  def list_tenants(tenant_1, tenant_2, tenant_3)
    @tenants = [tenant_1, tenant_2, tenant_3]
    return @tenants
  end

  def add_tenant(apt_rooms, new_tenant)

    if @tenants.length > apt_rooms
      "Can't add any more tenants"
    else
      new_tenant = Tenant.new(@name, @age, @gender)
      @tenants.push(new_tenant)
    end
  end

end
