require 'pry'
# 1. take a credit card and split up in to digits
# flip the number and every other number will be doubled
# if number is 2 digits then split it
# sum all of the number
# check if divisible by 10

def valid_card(card_number)
	holder = []
	split_number = card_number.to_s.split('').reverse
	split_number.each_with_index do |num, index|
		index % 2 == 0 ? holder << num.to_i : holder << num.to_i * 2
	end
	sum = holder.join.split('').map(&:to_i).reduce(:+)
	return sum % 10 == 0
end

