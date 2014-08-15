# Write a method that takes one argument (string)
# and returns the longest word from that string

jubjub = "Beware the Jubjub bird, and shun the frumios Bandersnatch!"
jabberwock = "Beware the Jabberwock, my son! The jaws that bite, the claws that catch!!!!!!!!!"

def longest_word(string)
  split_words = string.gsub!(/[^a-z0-9\s]/i, '').split(' ')
  longest = split_words.max_by { |x| x.length }
end

# Notes on Regular Expressions:
#  ^ = "everything that isn't..."
#  \s = white spaces
#  /i = makes it not case sensitive
#  replaces with white space

# split > take a string and turn it into an array specified by what you want



# ----------------- JON PORRAS -------------------------


# def longest_word(string)
#   holder = ""
#   string.gsub(/[^a-z0-9\s]/i, '').split(" ").each do |word|
#     if word.length > holder.length
#       holder = word
#     end
#   end
#   return holder
# end


# ---------------- PETER PAK ---------------------------

# def longest_word(string)
#   string.scan(/\w+/).max_by{ |word| word.length }
# end

# -- grabs everything that is either a letter or a number / no spaces, punctuation
# -- underscores are included

# -- scan > find stuff you want it to find and leave it in, remove everything else
# -- when scan finds something that doesn't fit your criteria, it breaks it



# ---------------- NAJEE GARDNER -----------------------

# def longest_word(string)
#   word = ''
#   counter = 0
#   letter_count = 0
#   longest_word = ''
#
#   while counter < string.length
#     if string[counter] =~ /[a-zA-Z]/
#       letter_count += 1
#       word += string[counter]
#     end
#
#     if string[counter] == ' ' || counter == string.length - 1
#       longest_word = word if word.length > longest_word.length
#       word = ''
#       letter_count = 0
#     end
#
#     counter += 1
#   end
#
#   longest_word
# end
