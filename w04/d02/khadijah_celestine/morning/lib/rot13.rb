#str = ARGV[0]

def encode(str)
	a = ('a'..'z').to_a
	str.split('').map { |s| a[(a.index(s) + 13) % 26] }.join('')
end

#puts encode(str)
