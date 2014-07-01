require 'pry'

def valid_card?(cc_num)
  cnt_arr = []
  cc_arr_split = cc_num.to_s.split('').reverse
  cc_arr_split.each.with_index { |num,i| i.even? ? cnt_arr << num.to_i :
  cnt_arr << num.to_i * 2}
  
  sum = cnt_arr.join.split('').map(&:to_i).reduce(:+)

  return sum % 10 == 0
end


puts valid_card?(1234567890123456) #should be false
puts valid_card?(4408041234567893) #should be true
puts valid_card?(38520000023237) #should be true
puts valid_card?(4222222222222) #should be true

binding.pry
