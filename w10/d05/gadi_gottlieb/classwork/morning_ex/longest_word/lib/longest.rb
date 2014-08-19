# Najee

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

  longest_word
end






# def longest_word(string)
#   array = string.split()
#   array.map do |word|
#     word_length = word.length
#
#   end
# end

# jons solution
# def longest_word(string)
#   holder = ""
#   string.gsub(/[^a-z0-9\s]/i, '').split(" ").each do |word|
#     if word.length > holder.length
#       holder = word
#     end
#   end
#   return holder
# end

# Peter
# def longest_word(string)
#   string.scan(/\w+/).max_by{ |word| word.length }
# end
