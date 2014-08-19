
def letter_count(string)
    str = Hash.new(0)
    string.split("").each do|letter|
      if letter != " "
        str[letter.downcase] += 1
      end
    end
    str
end
