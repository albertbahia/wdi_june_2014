class Calculator

  def add(a, b)
    a + b
  end

  def subtract(a, b)
    a - b
  end

  def sum(array)
    # if array == []
    #   return 0
    # else
    #   array.inject(:+)
    # end

    # array == [] ? 0 : array.inject(:+)

    # array.inject(:+) || 0

    array.inject(0, :+)
  end

  def multiply(*a)
    a.inject(:*)
  end

  def power(a, b)
    a ** b
  end

  def factorial(x)
    # (1..x).inject(:*) || 0
    (1..x).inject(1, :*)
  end

end
