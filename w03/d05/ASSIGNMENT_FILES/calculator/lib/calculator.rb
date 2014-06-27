class Calculator

  def add(number_one,number_two)
    number_one + number_two
  end

  def subtract(number_one,number_two)
    number_one - number_two
  end

  def sum(array)
    # array.length == 0 ? 0 : array.reduce(:+)
    array.reduce(0, :+)
  end

  def multiply(*nums)
    nums.reduce(:*)
  end

  def power(number_one,number_two)
    if number_two == 0
      return 1
    else
      number_one * power(number_one, number_two - 1)
    end

    # number_one ** number_two
  end

  def factorial(num)
    # num == 0 ? 1 : (1..num).reduce(:*)
    # if num == 0
    #   return 1
    # else
    #   (1..num).reduce(:*)
    # end
    (1..num).reduce(1,:*)
  end
end