# require 'pry'

def encode(string)
	
	first = ('a'..'m').to_a
	second = ('n'..'z').to_a

	letters = string.split('')

	result = letters.map do |letter|
		if first.include? letter 
			index = first.find_index(letter)
			rsecond[index]
		elsif second.include? letter
			index = second.find_index(letter)
			first[index]	
		end
	end
	return result.join('')
end

def encode(ciph)

	key = ('a'..'z').to_a

  new_ciph = ciph.split(//).map do |letter|
  	key.index(letter) < 13 ? key[key.index(letter) + 13] : key[key.index(letter)-13]
  end
  new_ciph.join
end
# binding.pry