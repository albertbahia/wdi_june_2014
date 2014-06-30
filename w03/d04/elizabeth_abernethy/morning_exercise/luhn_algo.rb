# Starting with the next to last digit and continuing with every other digit going back to the beginning of the card, double the digit.
# Sum all doubled and untouched digits in the number.
# If that total is a multiple of 10, the number is valid.
# For example, given the card number 4408 0412 3456 7893:


# 1. take a credit card number
# 2. split it into digits
# 3. flip it around
# 4. every other number, double
# 5. if the number is 2 digits, split it
# 6. sum all of the numbers
# 7. Check if divisible by 10

# .each_with_index iterates through an array with the index numbers

require 'pry'

def valid_card?(card_number)
  holder = []
  split_numbers = card_number.to_s.split(', ').reverse
  split_numbers.each_with_index do |num, index|
    #index.even ? holder << num.to_i : holder << num.to_i * 2
    index %2 == 0 ? holder << num.to_i : holder << num.to_i * 2
  end
  sum = holder.join.split('').map(&:to_i).reduce(:+)
  return sum % 10 == 0
end

puts valid_card?(1234567890123456) #should be false
puts valid_card?(4408041234567893) #should be true
puts valid_card?(38520000023237) #should be true
puts valid_card?(4222222222222) #should be true


binding.pry


# .map(&:to_i) >> shorthand for the full statement in order to perform one action
# on every value of the array

# & - to proc

# holder.join.split('').map do |num|
#     num.to_i
# end
