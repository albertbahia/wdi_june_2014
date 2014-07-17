# Mine:
# require 'pry'
#
# def encode(word)
#
#   rot13 = { "a" => "n", "b" => "o", "c" => "p", "d" => "q", "e" => "r",
#     "f" => "s", "g" => "t", "h" => "u", "i" => "v", "j" => "w", "k" => "x",
#     "l" => "y", "m" => "z", "n" => "a", "o" => "b", "p" => "c", "q" => "d",
#     "r" => "e", "s" => "f", "t" => "g", "u" => "h", "v" => "i", "w" => "j",
#     "x" => "k", "y" => "l", "z" => "m",
#     }
#
#   letters = word.split(//)
#   if letters[0] == "w" && letters[1] == "o"
#     return "j" + "b"
#   end
# end
#
#
# binding.pry


# Fen:
# require 'pry'
#
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
#     alphabet[index].chr
#   end
#   encoded_array.join
# end
#
# binding.pry

# Hoa's:
# require 'pry'
#
# def encode(string)
#   first_half = "abcdefghijklm"
#   second_half = "nopqrstuvwxyz"
#
#   first = first_half.split('')
#   second = second_half.split('')
#
#   letters = string.split('')
#   result = []
#
#   letters.each do |letter|
#     if first.include? letter
#       index = first.find_index(letter)
#       result << second[index]
#     elsif second.include? letter
#       index = second.find_index(letter)
#       result << first[index]
#       end
#     end
#   return result.join('')
# end
#
# puts encode("hello")
#
# binding.pry

# Francis' refactoring of Hoa's:
#
# def encode(string)
#   first = ('a'..'m').to_a
#   second = ('n'..'z').to_a
#
#   letters = string.split('')
#
#   result = letters.map do |letter|
#     if first.include? letter
#       index = first.find_index(letter)
#       second[index]
#     elsif second.include? letter
#       index = second.find_index(letter)
#       first[index]
#     end
#   end
#   return result.join('')
# end

# Francis'

key = ('a'..'z').to_a

    new_ciph = ciph.split(//).map do |cip|
    key.index(cip) < 13 ? key[key.index(cip) + 13] : key[key.index(cip)-13]
      end
