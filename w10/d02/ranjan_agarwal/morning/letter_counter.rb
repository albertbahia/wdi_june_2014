require 'pry'
def letter_count(string)
	chars = string.split(//)
	frequency = Hash.new(0)
	chars.each {|char| frequency[char.downcase] += 1}
	return frequency
end

string = "moon"

binding.pry
