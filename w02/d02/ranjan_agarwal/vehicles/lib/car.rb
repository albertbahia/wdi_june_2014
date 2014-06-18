require_relative'vehicles.rb'

class  Car < Vehicles
  def initialize(company, on, seats)
    super(company,on)
    @seats = 5
    #trunk_open = trunk_open
  end
  
end
