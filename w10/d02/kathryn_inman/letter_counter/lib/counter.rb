
# require 'pry'


def letter_count(string)
  no_space = string.downcase.split.join('')
  letter_array = no_space.chars
  letter_hash = {}
  letter_array.each do |letter|
    if letter_hash.has_key?(letter)
      letter_hash[letter] += 1
    else
      letter_hash[letter] = 1
    end
  end
  return letter_hash
end


# binding.pry
