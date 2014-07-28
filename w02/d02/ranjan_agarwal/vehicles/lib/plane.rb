require_relative'vehicles.rb'

class  Plane < Vehicle
  def initialize(company, on, seats)
    super(company,on)
    @seats = 100
    #@cockpit_full = cockpit_full
  end
end
