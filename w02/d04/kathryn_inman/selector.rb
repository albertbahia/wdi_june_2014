#require 'pry'

def selector(limit)
  num_array = (1...limit).to_a
  num_array.select do | digit |
    digit % 3 == 0 || digit % 5 == 0
  end
  .reduce(:+)
end

# binding.pry
