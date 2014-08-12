def letter_count(string)
  hash = {}
  string.split.join.downcase.split('').each do |letter|
    hash[letter] ? hash[letter] += 1 : hash[letter] = 1
  end
  hash
end
