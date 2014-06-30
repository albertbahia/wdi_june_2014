class Calculator


  def initialize
    @number = nil
    @operator = nil
  end

  def one
    if @operator == nil
      @number = 1
      self
    else
      @number + 1
    end
  end


  def plus
    @operator = :+
    self 
  end

end
