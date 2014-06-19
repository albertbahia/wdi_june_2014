class Computer

  attr_reader(:keyboard, :ports, :os)

  def initialize(keyboard, ports, os)
    @keyboard = keyboard
    @ports = ports
    @os = os
    @status = false
  end

  def status
    return @status
  end

  def push_power_button
    if @status == true
      @status = false
    elsif @status == false
      @status = true
    end
  end
end
