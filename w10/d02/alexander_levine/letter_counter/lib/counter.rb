def letter_count(word)
  letter_count_hash = {}
  word_array = word.downcase.split('')
  letter_range = ("a".."z")
  letter_range.each do |letter|
    if word_array.count(letter) != 0
      letter_count_hash[letter] = word_array.count(letter)
    end
  end
  letter_count_hash
end
