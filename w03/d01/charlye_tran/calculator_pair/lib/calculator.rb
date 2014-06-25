class Calculator
  def initialize
    @operator = nil
    @operand1 = nil
  end

  def one
    self
  end

  def five
    if @operator == :plus
      @operand1 + 5
    elsif @operator == :minus
      @operand1 - 5
    else
      @operand1 = 5
      self
    end
  end

  def plus
    @operator = :plus
    self
  end

  def minus
    @operator = :minus
    self
  end

end
