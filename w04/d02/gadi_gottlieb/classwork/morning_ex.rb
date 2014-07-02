require 'pry'

def encode(string)
  alphabet = [
    "a","b", "c", "d", "e",
    "f", "g", "h", "i", "g",
    "k", "l", "m", "n", "o",
    "p", "q", "r", "s", "t",
    "u", "v", "w", "x", "y",
    "z" ]

    first = alphabet.first(13).to_a
    last = alphabet.last(13).to_a

    letters = string.split('')
    result = []

    result = letters.map do |letter|
      if first.include? letter
        index = first.find_index(letter)
        last[index]
      elsif last.include? letter
        index = last.find_index(letter)
        first[index]
      end
    end
    return result.join('')
end

binding.pry

encode("hello") #=> "uryyb"
encode("peter") #=> "crgre"
encode("wdinstagram") #=> "jqvafgntenz"
encode("jqvafgntenz") #=> "wdinstagram"
