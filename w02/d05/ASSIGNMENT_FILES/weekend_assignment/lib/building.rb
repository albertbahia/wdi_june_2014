class Building

  attr_reader(:name, :address, :floors, :apartments)

  def initialize(name, address, floors)
    @name = name
    @address = address
    @floors = floors
    @apartments = []
  end

  def add_apartment(apt)
    @apartments.push(apt)
  end

  def list_apartments
    @apartments.map { |apt| apt.info }.join("\n")
  end

  def rent_apartment(apartment, tenant)
    apartment.add_tenants(tenant)
  end

end
