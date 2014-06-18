class Computers

  attr_reader(:keyboard, :ports, :os)

  def initialize(keyboard, ports, os)
    @keyboard = keyboard
    @ports = ports
    @os = os
  end
  
  # def shut_down
  #   if off == true
  #     return "Your computer's already off"
  #   else
  #     return "Your computer will shut down"
  #   end
  # end
end
