def valid_card?(card_num)
	arr = []
	card_num.to_s.split("").each_with_index do |digit, index|
		if index.even?
	  	puts "#{index} \t #{digit.to_i} \t #{digit.to_i * 2}"
			if digit.to_i*2 > 9
				digits = digit.split("")
				num1 = digits[0].to_i
				num2 = digits[1].to_i
				arr.push(num1*2)
				arr.push(num2*2)
			else
				arr.push(digit.to_i*2)
			end
		else
			puts "do nothing"
	  	puts "#{index} \t #{digit}"	
		end
	end
	puts "$*$ SUM $*$" * 4
	puts arr
	puts arr.reduce(:+)
	#sum % 10 == 0
end

puts valid_card?(1234567890123456)
puts valid_card?(4408041234567893) #should be true
puts valid_card?(38520000023237) #should be true
puts valid_card?(4222222222222) #should be true


def valid_card2?(card_number)
	holder = []
	split_numbers = card_number.to_s.split('').reverse
	split_numbers.each_with_index do |num, index|
		index.even? ? holder.push(num.to_i) : holder << num.to_i*2
	end

	sum = holder.join.split('').map(&:to_i).reduce(:+)
	sum % 10 == 0
end






