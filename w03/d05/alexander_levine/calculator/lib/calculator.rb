class Calculator

  def add(x, y)
    x + y
  end

  def subtract(x, y)
    x - y
  end

  def sum(array)
    array.inject(0, :+)
  end

  def multiply(*z)
    z.inject(:*)
  end

  def power(x, y)
    x ** y
  end

  def factorial(num)
     (1..num).inject(1, :*)
  end

end
