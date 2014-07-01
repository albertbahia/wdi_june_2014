def valid_card?(card_number)
  holder = []
  split_numbers = card_number.to_s.split('').reverse
  split_numbers.each_with_index do |num, index|
    index % 2 == 0 ? holder << num.to_i : holder << num.to_i * 2
  end
  sum = holder.join.split('').map { |num| num.to_i }.reduce(:+)
  return sum % 10 == 0
end

puts valid_card?(1234567890123456) #should be false
puts valid_card?(4408041234567893) #should be true
puts valid_card?(38520000023237) #should be true
puts valid_card?(4222222222222) #should be true





#  line 5 equivalent
# if index % 2 == 0
#   holder << num.to_i
# else
#   holder << num.to_i * 2
# end













# def valid_card?(card_num)
#   card = []
#   card = card_num.to_s.split('')
#   card.each do |second_last_nums|
#     second_last_nums[-2].each do  |multiply_nums|
#       multiply_nums * 2
#     end
#   end
# end


  #.map { |digit| digit.to_i }
  # card.each { |second_last_nums| second_last_nums[-2] * 2 }
# end




# Starting with the next to last digit and continuing with every other digit going back to the beginning of the card, double the digit.
#
# Sum all doubled and untouched digits in the number.
#
# If that total is a multiple of 10, the number is valid
