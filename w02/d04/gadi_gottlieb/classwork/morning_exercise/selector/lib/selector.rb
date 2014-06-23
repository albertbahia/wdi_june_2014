def selector(limit)
  (1...limit).select { |num| num % 3 == 0 || num % 5 == 0 }.reduce(:+)
end




# def selector(limit)
#   (1..limit).select { |num| num % 3 == 0 || num % 5 == 0 }.reduce(:+)
# end


#  the 1..limit results in addition of the multiples
# to 98 when we expected 78. this is because there are only 2 periods.
# two periods includes everything up to that number. When we use 3 periods
# (1...limit), it excludes the last number in the range.
