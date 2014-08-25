# def find_anagrams(word, array)
#   word_array = word.split("")
#   letters_array = array.map { |word| word.split("") }
#   matches = []
#   word_array.map do |letter|
#     letters_array.each do |word|
#       word.each do |array_word_letter|
#         if array_word_letter == letter
#           index = word.index(letter)
#           word.delete_at(index)
#         end
#       end
#       if word.length == 0
#         matched_word_index = letters_array.index(word)
#         return array[matched_word_index]
#       end
#     end
#   end
# end

def find_anagrams(base, words_list)
  words_list.select { |word| word.split("").sort == base.split("").sort }
end
