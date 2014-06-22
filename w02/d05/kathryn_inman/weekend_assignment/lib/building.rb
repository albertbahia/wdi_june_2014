class Building

  attr_reader(:name, :address, :floors, :apartments)
  def initialize(initial_name, initial_address, initial_floors)
    @name = initial_name
    @address = initial_address
    @floors = initial_floors
    @apartments = []
  end
end
