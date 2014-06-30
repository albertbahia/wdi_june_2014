class Calculator
  def initialize
  end

  def add(*x)
    x.reduce(:+)
  end

  def subtract(*x)
    x.reduce(:-)
  end

  def sum(x)
    x.length == 0 ? 0 : x.reduce(:+)
  end

  def multiply(*numbers)
    numbers.reduce(:*)
  end

  def power(*numbers)
    numbers.reduce(:**)
  end

  def any_operand(operand, *numbers)
    numbers.reduce(operand)
  end

  def factorial(num)
    num == 0 ? 1 : (1..num).reduce(:*)
  end

end
