def encode(str)
l = %w(a b c d e f g h i j k l m n o p q r s t u v w x y z)
str = str.split('')
	encoded = []
	str.each do |s|
		pos = l.index(s)
		pos = (pos + 13) % 26
		encoded.push(l[pos])
	end
	encoded.join('')
end

