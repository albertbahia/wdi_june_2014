require 'pry'
first_half = "abcdefghijklm"
second_half = "nopqrstuvwxyz"

first = first_half.split('')
second = second_half.split('')

def encode(string)
	first_half = "abcdefghijklm"
	second_half = "nopqrstuvwxyz"

	first = first_half.split('')
	second = second_half.split('')

	letters = string.split('')
	result = []

	letters.each do |letter|
		if first.include? letter 
			index = first.find_index(letter)
			result << second[index]
		elsif second.include? letter
			index = second.find_index(letter)
			result << first[index]	
		end
	end
	return result.join('')
end
binding.pry