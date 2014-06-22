require_relative '../lib/apartment'
require_relative '../lib/tenant'
class Building

  def initialize (name, address, floors)
    @name = name
    @address = address
    @floors = floors
    @apartment = Apartment.new
    @tenants = Tenant.new
  end

  def name
    @name
  end

  def address
    @address
  end

  def floors
    @floors
  end

  def apartment
    @apartment
  end

  def tenant
    @tenant
  end

end
