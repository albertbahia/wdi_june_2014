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
end
