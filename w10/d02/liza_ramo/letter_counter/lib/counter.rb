

# def letter_count(string)
#
#   chars = string.split(//)
#   return chars
#
#   chars
#
#
#   # key = letter
#   # val = frequency
#
# end


# Francis
# 
# def letter_count(string)
#   # This creates a hash with a default value of 0 instead of nil
#   letter_count_hsh = Hash.new(0)
#   string.split("").each do |letter|
#     if letter ! = " "
#       letter_count_hsh[letter.downcase] += 1
#     end
#   end
#   return letter_count_hsh
#
# end
#
# # Alexandra
#
# def letter_count(string)
#   #takes out spaces for multiple-word string
#   no_spaces = string.downcase.split.join('')
#   letters_array = no_spaces.chars
#   frequency = Hash.new(0)
#   letters_array.each { |l| frequency[l] +=1 }
#   return frequency
# end

# Najee

def letter_count(string)
  frequencies = {}
  # split then join to remove spaces
  string.split.join.downcase.split('').each do |letter|
    # ternary operator: if/else statement
    frequencies[letter] ? frequencies[letter] += 1 : frequencies[letter] = 1
  end
  return frequencies
end
