# def find_anagrams(string, array)
#   stringArr = string.split("");
#   currentWord = "";
#   counter = false;
#   match = "";
#
#   array.each do |word|
#
#     stringArr.each do |letter|
#       if word.include?(letter)
#         counter = true
#       else
#         counter = false
#       end
#     end
#
#     if counter == true
#       puts word
#     end
#   end
#
# end

def find_anagrams(base, words_list)
  words_list.select { |word| word.split('').sort == base.split('').sort }
end

find_anagrams('listen', %w(enlists google inlets banana))
