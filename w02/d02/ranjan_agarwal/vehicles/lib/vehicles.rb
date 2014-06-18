class Vehicles
  attr_reader(:company, :on,:seats)
  def initialize(company, on)
    @company = company
    @on = on
    @seats = nil
  end

  def turn_off
    if on == true
      return "Do nothing"
    else
      return "Turn off"
    end
  end
end
