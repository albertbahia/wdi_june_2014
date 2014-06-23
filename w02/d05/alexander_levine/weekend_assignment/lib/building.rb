class Building

  attr_reader :name, :address, :floors, :apartments

  def initialize(name, address, floors)
    @name = name
    @address = address
    @floors = floors
    @apartments = 0
  end

  def list_apartments(apartment)
    apartment.info
  end

  def rent_apartment(tenant, apartment)
    if apartment.tenants.length < apartment.bedrooms
      tenant.move_in(apartment)
      apartment.add_tenant(tenant)
    else
      "Apartment full!"
    end
  end

end
