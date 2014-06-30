def valid_card?(card_number)
  holder = []
  card_digits = card_number.to_s.split(' ').reverse
  card_digits.each_with_index do |num, index|
    index.even? ? holder << num.to_i : holder << num.to_i * 2
  end
  sum = holder.join.split(' ').map { |num| num.to_i }.reduce(:+)
  return sum % 10 == 0
end


puts valid_card?(1234567890123456) #should be false
puts valid_card?(4408041234567893) #should be true
puts valid_card?(38520000023237) #should be true
puts valid_card?(4222222222222) #should be true
