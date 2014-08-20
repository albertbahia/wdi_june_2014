def find_anagrams(base, words_list)
  words_list.select { |word| word.chars.sort == base.chars.sort }
end