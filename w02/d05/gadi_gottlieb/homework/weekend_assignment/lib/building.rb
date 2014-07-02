class Building

  attr_reader :name, :address, :floors, :apartments

  def initialize(name, address, floors)
    @name = name
    @address = address
    @floors = floors
    @apartments = []
  end

  def list_apartments
    return apartments.map { |appt| appt.info }.join("\n")
  end

  def rent_apartment(apartment,tenant)
    apartment.add_tenant(tenant) ? true : false
  end
end
