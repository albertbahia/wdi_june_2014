require 'pry'

def encode(word)
  ## attempt 1
  # rot13 = {
  #   a: "n",
  #   b: "o",
  #   c: "p",
  #   d: "q",
  #   e: "r",
  #   f: "s",
  #   g: "t",
  #   h: "u",
  #   i: "v",
  #   j: "w",
  #   k: "x",
  #   l: "y",
  #   m: "z",
  #   n: "a",
  #   o: "b",
  #   p: "c",
  #   q: "d",
  #   r: "e",
  #   s: "f",
  #   t: "g",
  #   u: "h",
  #   v: "i",
  #   w: "j",
  #   x: "k",
  #   y: "l",
  #   z: "m"
  # }
  #
  # word.split('').map {|l| rot13[l.to_sym]}.join

  ## attempt 2
  # encode_arr = word.split('').map do |letter|
  #   counter = letter.ord
  #   13.times do
  #     counter = 96 if counter == 122
  #     counter += 1
  #   end
  #   counter.chr
  #
  # end
  # encode_arr.join

  ## attempt 3
  # encode_arr = word.split('').map do |l|
  #   edge = 13 - (122 - l.ord)
  #   edge > 0 ? (96 + edge).chr : (l.ord + 13).chr
  # end
  # encode_arr.join

  # attempt 4
  alph = ("a".."z").to_a
  encode_arr = word.split('').map do |l|
    idx = alph.index(l)
    alph.rotate(13)[idx]
  end
  encode_arr.join
end

binding.pry
# encode("hello")
