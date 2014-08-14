

def valid_card(card_number)
	holder = []
	split_numbers = card_number.to_s('').reverse
	split_numbers.each_with_index do |num, index|
		index % 2 == 0 ? holder << num.to_i : holder << num.to_i * 2
	end
	sum = holder.join .split('').map(&:to_i).reduce(:+)
	return  sum % 10 == 0
end


