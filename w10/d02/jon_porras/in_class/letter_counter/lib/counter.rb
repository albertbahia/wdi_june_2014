def letter_count(string)
  newHash = Hash.new(0);
  strArr = string.split("")

  strArr.each do |letter|
    if letter != " "
      newHash[letter.downcase] += 1
    end
  end
  newHash
end


letter_count('hello');
