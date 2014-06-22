require_relative('tenant.rb')

class Apartment
  attr_reader(:name,:floor,:price,:sqft,:bedrooms,:bathrooms, :tenants)
  def initialize(name,floor,price,sqft,bedrooms,bathrooms)
    @name = name
    @floor = floor
    @price = price
    @sqft = sqft
    @bedrooms = bedrooms
    @bathrooms = bathrooms
    @tenants = []
  end

  def info
    return "Apartment Name: #{name} | Floor: #{floor} | Price: #{price} | Square Footage: #{sqft} | Bedrooms: #{bedrooms} | Bathrooms: #{bathrooms}"
  end

  # def tenants(tenants)
  #   if tenants.class == Tenant
  #     @tenant_name = tenants.name
  #     @tenant_age = tenants.age
  #     @tenant_gender = tenants.gender
  #   end
  # end
end
