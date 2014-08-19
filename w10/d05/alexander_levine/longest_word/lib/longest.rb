# def longest_word(string)
#   new_string = string.gsub(/[^a-z0-9\s]/i, '')
#   string_array = new_string.split(' ')
#   string_length_array = string_array.map do |string|
#     string.length
#   end
#   longest_number = string_length_array.max
#   longest_string_index = string_length_array.index(longest_number)
#   longest_string = string_array[longest_string_index]
# end

def longest_word(string)
  string.scan(/\w+/).max_by(&:length)
end
