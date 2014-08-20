def longest_word(string)
	arr = string.gsub(/[^a-zA-Z0-9\s]/i, '').split(' ')
	arr.max_by {|x| x.length }
end

# OR

def longest_word(string)
	string.scan(/\w+/).max_by { |word| word.length }
end