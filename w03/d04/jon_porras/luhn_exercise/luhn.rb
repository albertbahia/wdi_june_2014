#
# def valid_card?(number)
#
#   card_nums = number.to_s.split("").reverse
#
#
#   num_arr = card_nums.map {|num| num.to_i }
#
#   odd_index_nums = num_arr.select {|num| num_arr.index(num).odd?}
#
#   even_index_nums = num_arr.select {|num| num_arr.index(num).even?}
#
#   odd_index_sums = odd_index_nums.map {|num| num * 2 }
#   new_odd_sums = odd_index_sums.join.split('')
#
#   print new_odd_sums
#
#
#   if ((even_index_nums.reduce(:+) + odd_index_sums.reduce(:+)) % 10 == 0)
#     true
#   else
#     false
#   end
#
# end



def valid_card?(card_number)
  holder = []
  split_numbers = card_number.to_s.split('').reverse
  split_numbers.each_with_index do |num, index|
    index.even? ? holder << num.to_i : holder << num.to_i * 2
  end
  sum = holder.join.split('').map(&:to_i).reduce(:+)
  sum % 10 == 0 ? true : false
end


puts valid_card?(1234567890123456) #should be false
puts valid_card?(4408041234567893) #should be true
puts valid_card?(38520000023237) #should be true
puts valid_card?(4222222222222) #should be true
