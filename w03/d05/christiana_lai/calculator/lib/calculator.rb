class Calculator

  def add(num1, num2)
    num1 + num2
  end

  def subtract(num1, num2)
    num1 - num2
  end

  def sum(array)
    array.reduce(0, :+)
  end

  def multiply(*num)
    num.reduce(:*)
  end

  def power(num1, num2)
    # num1 ** num2
    if num2 == 0
      return 1
    else
      num1 * power(num1, num2 - 1)
  end

  def factorial(num)
    # return 1 if limit.zero?
    # 1.upto(limit).inject(:*)

    # num == 0 ? 1 : (1...num).reduce(:*)

    (1..num).reduce(1, :*)
  end

end
