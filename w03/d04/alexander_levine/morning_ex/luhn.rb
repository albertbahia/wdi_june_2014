require 'Pry'

def luhn(card_number)
  holder = []
  split_numbers = card_number.to_s.split('').reverse
  split_numbers.each_with_index do |num, index|
    index % 2 == 0 ? holder << num.to_i : holder << num.to_i * 2
  end
  sum = holder.join.split('').map(&:to_i).reduce(:+)

  return sum % 10 == 0
end

puts luhn(1234567890123456) #should be false
puts luhn(4408041234567893) #should be true
puts luhn(38520000023237) #should be true
puts luhn(4222222222222) #should be true
