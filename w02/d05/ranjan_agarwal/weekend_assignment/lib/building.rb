require_relative('./apartment.rb')
require_relative('./tenant.rb')
class Building
  attr_reader(:name, :address, :floors, :apartments)
  def initialize(name,address,floors)
    @name = name
    @address = address
    @floors = floors
    @apartments = []
  end

  def list_apartments
      apartments_string = ""
    apartments.map do |apartment|
      return apartment.info
    end
  end

  def rent_apartment(apartment, tenant)
    
  end

end
