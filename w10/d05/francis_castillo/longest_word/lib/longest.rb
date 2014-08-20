def longestWord(string)
  string_split = string.split(/[^a-zA-Z]/);
  new_string = string_split.map do |word|
    word.length
  end
  string_split[new_string.index(new_string.max)]
end
