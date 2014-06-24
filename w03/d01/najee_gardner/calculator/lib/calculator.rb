class Calculator

  # def initialize
  #   @current_number = nil
  #   @operation = nil
  # end

  def five
    case @operation
    when nil
      @current_number = 5
      self
    when :minus
      @current_number - 5
    when :plus
      @current_number + 5
    end
  end

  def plus
    @operation = :plus
    self
  end

  def minus
    @operation = :minus
    self
  end
end
