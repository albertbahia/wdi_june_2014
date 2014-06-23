class Building

  attr_reader(:name, :address, :floors, :apartments)

  def initialize(name, address, floors)
    @name = name
    @address = address
    @floors = floors
    @apartments = []
  end

  def list_apartments(apartments)
    return apartments
  end

  def rent_apartment(apartment, tenant_1, tenant_2)
    current_tenants = [tenant_1, tenant_2]

    if current_tenants.length == apartment.bedrooms && current_tenants.length > apartment.bedrooms
      "Apartment is full, can't rent it out."
    else
      @apartments.push(tenant_1, tenant_2)

    end



  end


end
