require_relative './tenant'

class Apartment

  attr_reader(:name, :floor, :price, :sqft, :bedrooms, :bathrooms, :tenants)

  def initialize(name, floor, price, sqft, bedrooms, bathrooms)
    @name = name
    @floor = floor
    @price = price
    @sqft = sqft
    @bedrooms = bedrooms
    @bathrooms = bathrooms
    @tenants = [ ]
    # @tenants = [Tenant.new(@name, @age, @gender)]

  end

  def info
    return "Name: #{name}, Floor: #{floor}, Price: #{price}, Square footage: #{sqft}, Bedrooms: #{bedrooms}, Bathrooms: #{bathrooms}"
  end

  # def add_tenant(new_tenant)
  #   tenants.push(new_tenant)
  # end

  def add_tenant(new_tenant)
    if @bedrooms < @tenants.count
    @tenants.push(new_tenant)

    elsif @bedrooms >= @tenants.count
    "No more tenants can be added"
    end
  end

  def list_tenants
    # tenant.list_info.map do |new_tenant|
    # tenants_list = return new_tenant
    # return new_tenant.list_tenants
  end

end
