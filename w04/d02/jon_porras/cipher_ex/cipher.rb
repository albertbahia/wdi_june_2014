def encode(string)
  alph = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
  letter_arr = string.split("")
  index_arr = letter_arr.map {|letter| alph.index(letter)-13}
  encoded_arr = index_arr.map {|index| alph[index]}.join()
end

puts encode("hello")
puts encode("peter")
puts encode("wdinstagram")
puts encode("jqvafgntenz")
