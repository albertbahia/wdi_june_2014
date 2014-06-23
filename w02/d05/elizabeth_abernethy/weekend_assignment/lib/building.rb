require_relative 'apartment.rb'
require_relative 'tenant.rb'

class Building

  attr_reader(:name, :address, :num_floors)

  def initialize (name, address, num_floors)
    @name = name
    @address = address
    @num_floors = num_floors
  end

end
