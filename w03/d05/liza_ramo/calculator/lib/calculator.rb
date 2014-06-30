
class Calculator

  def add(num1, num2)
    num1 + num2
  end

  def subtract(num1, num2)
    num1 - num2
  end

  def sum(array)
    if array == []
      return 0
    else
      array.reduce(:+)
    end
  end

  def multiply(*args)
    args.reduce(:*)
  end

  def power(number_one, number_two)
    if number_two == 0
      return 1
    else
      number_one ** number_two
    end
  end

  def factorial(num)
    num == 0 ? 1 : (1..num).reduce(:*)
  end

end
