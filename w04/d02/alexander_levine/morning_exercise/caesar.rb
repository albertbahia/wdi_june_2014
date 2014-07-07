require 'pry'



def encode(word)
  cipher = {
    "a" => "n",
    "b" => "o",
    "c" => "p",
    "d" => "q",
    "e" => "r",
    "f" => "s",
    "g" => "t",
    "h" => "u",
    "i" => "v",
    "j" => "w",
    "k" => "x",
    "l" => "y",
    "m" => "z",
    "n" => "a",
    "o" => "b",
    "p" => "c",
    "q" => "d",
    "r" => "e",
    "s" => "f",
    "t" => "g",
    "u" => "h",
    "v" => "i",
    "w" => "j",
    "x" => "k",
    "y" => "l",
    "z" => "m"
  }

  new_word = ""
  word_array = word.split("")
  word_array.each do |letter|
    new_word += cipher[letter]
  end
  return new_word
end

binding.pry
