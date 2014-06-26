def valid_card?(card_number)
  holder = []
  split_numbers = card_number.to_s.split('').reverse
  # multiply even indexed numbers by 2
  split_numbers.each_with_index do |num, index|
    index.even? ? holder.push(num.to_i) : holder << num.to_i * 2
  end
  # join the numbers, split into digits, map to integer, and reduce by addition
  sum = holder.join.split('').map { |num| num.to_i }.reduce(:+)
  # this will evaluate to true or false
  return sum % 10 == 0
end


puts valid_card?(1234567890123456) #should be false
puts valid_card?(4408041234567893) #should be true
puts valid_card?(38520000023237) #should be true
puts valid_card?(4222222222222) #should be true