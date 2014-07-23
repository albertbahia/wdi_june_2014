class Calculator

  def add(num1, num2)
    num1 + num2
  end

  def subtract(num1, num2)
    num1 - num2
  end

  def sum(array)
    # if array == []
    #   return 0
    # else
    #   array.reduce(:+)
    # end
    # array.length == 0 ? 0 : array.reduce(:+)
    array.reduce(0, :+)
  end

  def multiply(*args)
    args.reduce(1, :*)
  end

  def power(*args)
    # if num2 == 0
    #   return 1
    # else
    #   num1 * power(num1, num2 -1)
    # end
    # num1 ** num2
    args.reduce(:**)
  end

  def factorial(limit)
    # limit == 0 ? 1 : (1..limit).reduce(:*)
    (1..limit).reduce(1, :*)
  end



end
