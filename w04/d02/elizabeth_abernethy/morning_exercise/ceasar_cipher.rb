# - Hoa's Solution
# def encode(string)
#
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


# - Alex's Solution
# def encode(string)
#   plain = ("abcdefghijklmnopqrstuvwxyz")
#   cipher = ("nopqrstuvwxyzabcdefghijklm")
#   encoded = string.tr!(plain, cipher)
#   return encoded
# end

# - Francis's Solution
# def encode(string)
#   key = ('a'..'z').to_a
#
#   new_cipher = string.split(//).map do |letter|
#     key.index(letter) < 13 ? key[key.index(letter) + 13] : key[key.index(letter)-13]
#   end
#   new_cipher.join
# end


puts encode("hello") #=> "uryyb"
puts encode("peter") #=> "crgre"
encode("wdinstagram") #=> "jqvafgntenz"
