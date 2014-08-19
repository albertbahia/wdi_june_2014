require 'pry'

def longest_word(string)
  word = ''
  counter = 0
  longest_word = ''

  while counter < string.length
    if string[counter] =~ /[a-zA-Z]/
      word += string[counter]
    end

    if string[counter] == ' ' || counter == string.length - 1
      longest_word = word if word.length > longest_word.length
      word = ''
    end

    counter += 1
  end

  longest_word
end

  # words = string.split(' ')
  # longest_word = ''
  #
  # words.each do |word|
  #   letter_count = 0
  #   just_word = ''
  #   word.split('').each do |letter|
  #     if letter =~ /[a-zA-Z]/
  #       letter_count += 1
  #       just_word += letter
  #     end
  #   end
  #
  #   longest_word = just_word if letter_count > longest_word.length
  # end
  #
  # longest_word
end
