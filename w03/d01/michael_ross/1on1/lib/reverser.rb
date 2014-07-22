def reverser(string)
  new_string = string.split.map do |word|
    word.reverse
  end
  new_string.join(" ")
end
