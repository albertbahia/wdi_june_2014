require_relative 'computer.rb'

class Laptop
  attr_reader(:keyboard, :ports, :os)

  def initialize(keyboard, ports, os)
    super(keyboard, ports, os)
    @trackpad = trackpad
  end

  # def pick_up(feet)
  # end
  #
  # def close_lid()
  # end

end
