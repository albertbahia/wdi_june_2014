def longest_word(string)
  words_arr = []
  string.split(' ').each do |word|
    words_arr.push(word.chars.delete_if {|char| char =~ /\W/})
  end
  longest = words_arr.max_by {|word| word.length}
  return longest.join
end
 
