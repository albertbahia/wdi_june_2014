require 'pry'

def encode(word)
  new_word = word.split("").map
  new_word
end

binding.pry

# FEN

# def encode(input_string)
#   alphabet = %w(a b c d e f g h i j k l m n o p q r s t u v w x y z)
#   char_array = input_string.split(//)
#   char_indices = char_array.map do |char|
#     alphabet.index { |letter| letter == char} + 13
#   end
#   char_indices_plus = char_indices.map do |char|
#     if char.to_i > 26
#       char = char.to_i - 26
#     else
#       char = char
#     end
#   end
#   encoded_array = char_indices_plus.map do |index|
#     alphabet[index].join
#   end
# end
#
# HOA

def encode(string)
  # first_half = "abcdefghijklm"
  # second_half = "nopqrstuvwxyz"
  #
  # first = first_half.split("")
  # second = second_half.split("")

  first = ('a'..'m').to_a
  second = ('n'..'z').to_a

  letters = string.split("")

  result = letters.map do |letter|
    if first.include? letter
      index = first.find_index(letter)
      second[index]
    elsif second.include? letter
      index = second.find_index(letter)
      first[index]
    end
  end
  return result.join("")
end

# Francis
def encode(word)
  key = ('a'..'z').to_a

  new_cipher = word.split(//).map do |letter|
    key.index(letter) < 13 ? key[key.index(letter) + 13] : key[key.index(letter) - 13]
  end
  new_cipher.join
end
