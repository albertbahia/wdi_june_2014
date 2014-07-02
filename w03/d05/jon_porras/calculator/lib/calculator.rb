class Calculator

  def add(num1, num2)
    num1 + num2
  end

  def subtract(num1, num2)
    num1 - num2
  end

  def sum(arr)
    arr.reduce(:+) == nil ? 0 : arr.reduce(:+)
  end

  def multiply(*args)
    args.reduce(:*)
  end

  def power(*args)
    args.reduce(:**)
  end

  def factorial(limit)
    limit == 0 ? 1 : (1..limit).reduce(:*)
  end
end
