def find_anagrams(base, words_list)
  words_list.select { |word| word.split('').sort == base.split('').sort }
end