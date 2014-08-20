require 'pry'
def find_anagrams(base, word_list)
  matches = []

  word_list.each do |ana|
    original_letters = base.split('')
    included = true
    ana.split('').each do |letter|
      if original_letters.include?(letter)
        original_letters.delete_at(original_letters.index(letter))
      else
        included = false
      end
    end

    if included
      matches << ana
    end
  end

  matches

  # mck solution
  # word_list.select { |word| word.split('').sort == base.split('').sort }
end
