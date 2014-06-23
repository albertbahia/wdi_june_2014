
# If we list all the natural numbers below 10 that are multiples of 3 or 5,
# we get 3, 5, 6 and 9. The sum of these multiples is 23.

# Know we need:
# -> √ A collection of nums:
    # def selector(limit)
    #   (1...10).select { |num| num % 3 == 0 || num % 5 == 0 }
    # end

# -> Then you'll need to add the numbers together


# Define a method that will accept one parameter, a limit, and utilize
# the Ruby `select` method to find the sum of all the multiples of 3 or 5 below 1000.


def selector(limit)
  (1...limit).select { |num| num % 3 == 0 || num % 5 == 0 }.reduce(:+)
end

#1000 is the limit we want:
puts selector(1000)




# To print out all numbers 1-10 without writing them out:
# num = (1...10).each do |e| puts e
# end

# array = [1, 2, 3, 4, 5, 6, 7, 8, 9]



# def multiples(limit)
# limit =
#
#   arr.select { |a| a % 3 == 0 && a % 5 == 0 }
#
#   # array.modulo(3) && array.modulo(5)
#   # while a < 10
#
#
#
# end


# def multiples
#
#   arr.select { |a| a % 3 == 0 }
#
# end
# puts arr.select

num = (1...10).map do |e| puts e
end
