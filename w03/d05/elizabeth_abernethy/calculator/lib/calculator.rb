  class Calculator

    def add(num1, num2)
      return num1 + num2
    end

    def subtract(num1, num2)
      return num1 - num2
    end

    def sum(array)
      # array.length == 0 ? 0 : array.reduce(:+)
      array.reduce(0, :+)
    end

    # def sum(array)
    #   if array.length > 0 then
    #     array.reduce(:+)
    #   else
    #     return 0
    #   end
    # end

    def multiply(*numbers)
      numbers.reduce(:*)
    end

    def power(num1, num2)
      num1 ** num2
    end

    def factorial(num)
      (1..num).inject(:*) || 1
    end

  end
