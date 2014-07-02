class Calculator
 def add(num1, num2)
   num1 + num2
 end

  def subtract(num1, num2)
    num1 - num2
  end

  def sum(arr)
    arr.reduce(0,:+)
  end

  def multiply(*nums)
    nums.reduce(:*)
  end

  def divide(num1, num2)
    num1 / num2
  end

  def power(num, n)
    # if n == 0
    #   return 1
    # else
    #   return num * power(num, n-1)
    # end

    num ** n
  end

  def factorial(num)
    # if num == 0
    #   return 1
    # else
    #   return num * factorial(num - 1)
    # end

    num == 0 ? 1 : (1..num).reduce(:*)
  end
end
