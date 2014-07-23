# def valid_card?(num)
#   new_num = num.to_s.split(" ")
#   new_string = new_num.each { |number| number % 2 == 0 }
#   new_string.even
# end
#




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
