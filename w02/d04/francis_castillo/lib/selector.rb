#require 'pry'
def selector(limit)
  (1...limit).select { |num| num % 3 == 0 || num % 5 == 0 }
  .reduce(:+)
end
# binding.pry
