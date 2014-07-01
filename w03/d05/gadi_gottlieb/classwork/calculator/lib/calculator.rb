class Calculator


  def add(x, y)
      x + y
  end

  def subtract(x, y)
    x - y
  end

  def sum(x)
    ###########
    #MY METHOD#
    ###########

    # array = x.each { |num| num + num }
    # array.reduce(:+).to_i

    #########
    #FRANCIS#
    #########

  # x.length == 0 ? 0 : x.reduce(:+)
  # Ternary statement:
  # means if something is
  # equal to something return true,
  # else do something

    ###########
    #MCKENNETH#
    ###########

    # x.reduce(0, :+)

    x.reduce(:+).to_i

  end

  def multiply(*x)
    # (*variable), the *
    # takes a set of numbers and
    # puts it into an array
    x.reduce(:*)
  end

  def power(*x)
    x.reduce(:**)
  end

  def factorial(num)
    # num == 0 ? 1 : (1..num).reduce(:*)


    (1..num).reduce(1, :*)
  # above syntax says, if 1..0 <means 1 to 0,
  # the .reduce(1, :*) method means set it equal
  # to 1, if num is equal to 4, it will take
  # all numbers from from 1 to 4 and multiply
  # them together.
  end
end
