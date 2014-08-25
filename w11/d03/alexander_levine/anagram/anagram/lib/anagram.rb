# def find_anagrams(string, array)
#   word_match_array = []
#   array.each do |word|
#     match = false
#     string.each_char do |letter|
#       if word.include? letter
#         match = true
#       else
#         match = false
#         break
#       end
#     end
#     if match = true
#       word_match_array << word
#     end
#   end
# end

def find_anagrams(base, words_list)
  words_list.select { |word| word.split('').sort == base.split('').sort }
end
