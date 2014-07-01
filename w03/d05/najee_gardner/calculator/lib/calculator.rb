class Calculator
  def add(num1, num2)
    num1 + num2
  end

  def subtract(num1, num2)
    num1 - num2
  end

  def sum(arr)
    return 0 if !arr.reduce(:+)
    arr.reduce(:+)

    ## McK solution
    # arr.reduce(0, :+)
  end

  def multiply(*nums)
    nums.reduce(:*)
  end

  def power(num, power)
    num**power

    ## Khadijah's answer (recursive)
    # power == 0 ? 1 : num * power(num, power - 1)
  end

  def factorial(num)
    num == 0 ? 1 : (1..num).reduce(:*)
  end
end
