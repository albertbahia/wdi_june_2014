# Francis
# def letter_count(string)
#   letter_count_hsh = Hash.new(0)
#   string.split("").each do|letter|
#     if letter != " "
#       letter_count_hsh[letter.downcase] += 1
#     end
#   end
#   letter_count_hsh
# end

# Alex A
# def letter_count(string)
#   #takes out spaces for multiple-word string
#   no_spaces = string.downcase.split.join('')
#   letters_array = no_spaces.chars
#   frequency = Hash.new(0)
#   letters_array.each { |l| frequency[l] +=1 }
#   return frequency
# end

# Najee
# def letter_count(string)
#   frequencies = {}
#   string.split.join.downcase.split('').each do |letter|
#     frequencies[letter] ? frequencies[letter] += 1 : frequencies[letter] = 1
#   end
#   frequencies
# end
