require_relative './tenant.rb'

class Apartment

  attr_reader(:name, :floor, :price, :sqft, :bathrooms, :bedrooms, :tenants)
  def initialize(initial_name, initial_floor, initial_price, initial_sqft, initial_bedrooms, initial_bathrooms)
    @name = initial_name
    @floor = initial_floor
    @price = initial_price
    @sqft = initial_sqft
    @bedrooms = initial_bedrooms
    @bathrooms = initial_bathrooms
    @tenants = []
  end

  def info
    apartment_info = "Name: #{self.name}, "
    apartment_info += "Floor: #{self.floor.to_s}, "
    apartment_info += "Price: $#{self.price.to_s}, "
    apartment_info += "SqFt: #{self.sqft.to_s}, "
    apartment_info += "#{self.bedrooms.to_s} bedrooms, "
    apartment_info += "#{self.bathrooms.to_s} bathrooms"
    if @tenants.length == 0
      return apartment_info
    else
      apartment_info += ", Tenants: #{self.list_tenants}"
    end
  end

  def list_tenants
    if self.tenants.length > 0
      list = " "
      self.tenants.each do |tenant_object|
        list += tenant_object.list_info + ", "
      end
      return list
    else
      "No tenants presently."
    end
  end

  def add_tenant(new_tenant) #expecting Tenant class object
    if self.tenants.length < self.bedrooms
      @tenants.push(new_tenant)
    else
      @tenants = tenants
    end
  end

end
