class Vehicle
  attr_reader(:company,:on,:seats)
  def initialize(company,on,seats)
    @company = company
    @on = on
    @seats = seats
  end
  def turn_off
    @on = false
    
  end

end
