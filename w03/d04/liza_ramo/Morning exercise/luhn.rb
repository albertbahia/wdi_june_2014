
# Orig  :  4 4 0 8 0 4 1 2 3 4   5 6   7 8   9 3

# Step 1:  8 4 0 8 0 4 2 2 6 4  10 6  14 8  18 3

# Step 2:  8+4+0+8+0+4+2+2+6+4+1+0+6+1+4+8+1+8+3 = 70
# Step 3:  70 % 10 == 0


# Mine:

# require 'pry'
#
# def valid_card?(number)
#
#   holder = [1, 2]
#   holder.each do { |num| num * 2 }
#
#   (holder[-2] * 2), (holder[-4] * 2)
#   sum = holder[-1] + holder[-2] + holder[-3] + holder[-4]
#
#   if sum % 10 == 0
#     return true
#   else
#     return false
#   end
# end
#
# binding.pry
#


#Mck's

#Plan:
# Take a credit card number
# Split it up into digits
# Flip the number
# Every other number, double it --> if the index is even
# If the number is two digits, split it
# Sum all of the numbers
# Check if divisible by 10

def valid_card?(card_number)                                  # To find out if a CC is valid, enter a CC num (card_number) as the argument
  holder = []                                                 # Set a var 'holder' to an empty array
  split_numbers = card_number.to_s.split('').reverse          # split_numbers = 
  split_numbers.each_with_index do |num, index|
    index.even? ? holder << num.to_i : holder << num.to_i * 2
  end
  sum = holder.join.split('').map { |num| num.to_i }.reduce(:+)
  return sum % 10 == 0
end
