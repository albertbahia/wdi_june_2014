# Najee
def letter_count(string)
  hash = {}
  string.split.join.downcase.split('').each do |letter|
    hash[letter] ? hash[letter] += 1 : hash[letter] = 1
  end
  hash
end



# Alex
# def letter_count(string)
#   #takes out spaces for multiple-word string
#   no_spaces = string.downcase.split.join('')
#   letters_array = no_spaces.chars
#   frequency = Hash.new(0)
#   letters_array.each { |l| frequency[l] +=1 }
#   return frequency
# end


# Francis
# def letter_count(string)
#   letter_count_hash = Hash.new(0)
#   string.split("").each do|letter|
#     if letter != " "
#       letter_count_hash[letter.downcase] += 1
#     end
#   end
#   letter_count_hash
# end
#
# def letter_count(word)
#   letters = word.split(//)
#   length_of_array = letters.count
#   sorted_letters = letters.sort
#
#   sorted_letters.maps do |n|
#     hash= {n=>1}
#
#     # new_array = []
#     # if n == n
#     #   amount_of_letters = n.reduce(:+)
#     #   new_array.push(amount_of_letters)
#     # else
#     #   new_array.push(n)
#     # end
#   end
#
# end
