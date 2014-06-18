require_relative'vehicles.rb'

class  Plane < Vehicles
  def initialize(company, on, seats)
    super(company,on)
    @seats = 100
    #@cockpit_full = cockpit_full
  end
end
