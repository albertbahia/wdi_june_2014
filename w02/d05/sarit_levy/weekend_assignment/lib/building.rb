#There is still 1 failure on the spec for this class and 3 pending methods yet to be written.

class Building

  attr_reader(:name, :address, :floors)

  def initialize(name, address, floors)
    @name = "HAMco Towers"
    @address = "41 USW NY,NY"
    @floors = 5
  end

  def building
    building = Building.new
  end

  # def apartments
  #   apartments =
  # end

  def tenant_1
    @tenant_1 = Tenant.new
  end

  def tenant_2
    @tenant_2 = Tenant.new   end

  def list_apartments
    list_apartments = "Building name is: #{name}."
    list_apartments += "Building address is: #{address}."
    list_apartments += "Number of floors: #{floors}."
  end

  # def apartment_full
  #   apartment_full =
  # end

  def rent_apartment
     #rents an apartment to a tenant
    #does not rent an apartment that is full
  end

end
