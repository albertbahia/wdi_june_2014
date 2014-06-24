#There is still 1 failure on the spec for this class and 4 pending methods yet to be written.

class Apartment

  attr_reader(:name, :floor, :price, :sqftage, :bedrooms, :bathrooms, :tenants,
    :tenant_1, :tenant_2)

  def initialize(name, floor, price, sqftage, bedrooms, bathrooms)
    @name = name
    @floor = floor
    @price = price
    @sqftage = sqftage
    @bedrooms = bedrooms
    @bathrooms = bathrooms
    @tenants = tenants
    @tenant_1 = tenant_1
    @tenant_2 = tenant_2
  end

  def apartment
    apartment = Apartment.name
  end

  def info
    # info = lists the apartment info
  end


  def list_tenants
    # list_tenants = lists all of the tenants information' do
  end


  def add_tenant
    # adds a tenant to the apartment
    # does not add more tenants than rooms
  end

end
