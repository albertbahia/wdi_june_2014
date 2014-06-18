require_relative 'computers.rb'

class Desktop
  attr_reader(:keyboard, :ports, :os)

  def initialize(keyboard, ports, os)
    super(keyboard, ports, os)
    @wires = wires
  end
  
  # def swivel_monitor
  # end
  #
  # def act_as_server
  # end

end
