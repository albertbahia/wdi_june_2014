require 'pry'

def rot13(words)
  array = %w(a b c d e f g h i j k l m n o p q r s t u v w x y z)
  new_array = []
  letter = nil
  new_words = words.split.map
  new_words.each do |x|
  index = array.index(x)
  new_array = array[index.to_i + 13].map
  end
  new_array.join('')
end

binding.pry
