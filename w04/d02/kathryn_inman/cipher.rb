require 'pry'


def encode(input_string)
  alphabet = ('a'..'z').to_a
  char_array = input_string.split(//)
  char_indices = char_array.map do |char|
    alphabet.index { |letter| letter == char} + 13
  end
  char_indices_plus = char_indices.map do |char|
    if char.to_i > 26
      char = char.to_i - 26
    else
      char = char
    end
  end
  encoded_array = char_indices_plus.map do |index|
    alphabet[index]
  end
encoded_array.join
end

binding.pry
