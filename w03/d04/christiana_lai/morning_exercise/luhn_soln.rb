require 'pry'
# take a credit card number
# split it up into digits
# flip the number
# for every other number, double it
# if the number is two digits, split it
# sum all of the numbers
# check if divisible by 10

def valid_card?(card_number)
  holder = []
  split_numbers = card_number.to_s.split('').reverse
  split_numbers.each_with_index do |num, index|
    index % 2 == 0 ? holder << num.to_i : holder << num.to_i * 2
  end
  sum = holder.join.split('').map(&:to_i).reduce(:+)
  return sum % 10 == 0
end

puts valid_card?(1234567890123456)
puts valid_card?(4408041234567893)
puts valid_card?(38520000023237)
puts valid_card?(4222222222222) 

binding.pry
