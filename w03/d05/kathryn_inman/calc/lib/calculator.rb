class Calculator

  def add(num1, num2)
    sum = num1 + num2
  end

  def subtract(num1, num2)
    result = num1 - num2
  end

  def sum(array)


    if array.length == 0
      sum = 0
    elsif array.length == 1
        sum = array[0]
    else
      sum = array.reduce(:+)
    end
  end

  def multiply(*num)
    num.each { |num| num}.reduce(:*)
  end

  def power(num1, num2)
    num1** num2
  end

  def factorial(num)
    if num == 0
      fac = 1
    else
      fac = num.downto(1).reduce(:*)
    end
  end

end
