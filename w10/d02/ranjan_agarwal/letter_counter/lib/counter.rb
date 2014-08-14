require 'pry'

# def letter_count(string)
# 	chars = string.split(//)
# 	frequency = Hash.new(0)
# 	chars.each {|char| frequency[char.downcase] += 1}
# 	return frequency
# end

# Class Solution
# def letter_count(string)
# 	letter_count_hash = Hash.new(0)
# 	string.split("").each do |letter|
# 		if letter != " "
# 			letter_count_hash[letter.downcase] +=1
# 		end
# 	end
# 	letter_count_hash
# end

# Najee's Solution
def letter_count(string)
  frequency = {}
  string.split.join.downcase.split('').each do |letter|
  	# If letter has never been seen, goes to else and counts + 1. Otherwise it will add +1 to the letter
    frequency[letter] ? frequency[letter] += 1 : frequency[letter] = 1
  end
  frequency
end