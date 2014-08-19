
def longest_word(words)
  # regex: \W (grabs non-word characters)
    # + (combines delimiters)
  # split the words string by those non-word characters
  word_array = words.split(/\W+/)
  # Returns => [
  #     [0] "Beware",
  #     [1] "the",
  #     [2] "Jubjub",
  #     [3] "bird",
  #     [4] "and",
  #     [5] "shun"
  # ]
  return word_array
  size_array = word_array.map { |word| word.size }
  # # return size_array.zip(word_array).max
  return word_array[size_array.index(size_array.max)]
end


# Jon's:
def longest_word(string)
  holder = ""
  # Anything that's not a-z or whitespace
  # /i makes it case insensitive
  string.gsub(/[^a-z0-9\s]/i, '').split(" ").each do |word|
    # takes the element & compares it to the current word in the holder
    if word.length > holder.length
      holder = word
    end
  end
  return holder
end


# Peter's:
def longest_word(string)
  string.scan(/\w+/).max_by{ |word| word.length }
end

# Najee:
def longest_word(string)
  word = ''
  counter = 0
  letter_count = 0
  longest_word = ''

  while counter < string.length
    if string[counter] =~ /[a-zA-Z]/
      letter_count += 1
      word += string[counter]
    end
    if string[counter] == ' ' || counter == string.length - 1
      longest_word = word if word.length > longest_word.length
      word = ''
      letter_count = 0
    end
    counter += 1
  end
  return longest_word
end

# iterate through the string letter by letter
# keep track of the letter we're on in the while loop
# while loop through string one character at a time
# for each char, check if letter
  # if true, add one to letter_count
  # this keeps track of the word
  # if at the end of word or end of string
# check if longest word is longer than the current 'high score' word
# finally, return longest_word






##
