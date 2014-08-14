
# -------------------------------- FRANCIS ---------------------------

def letter_count(string)
  # Hash.new(0) > creates a new hash with a default of 0 instead of nil
  letter_count_hash = Hash.new(0)
  string.split("").each do |letter|
    if letter != " "
      letter_count_hash[letter.downcase] += 1
    end
  end
  letter_count_hash
end

# -------------------------------- ALEX ---------------------------

def letter_count(string)
  #takes out spaces for multiple-word string
  no_spaces = string.downcase.split.join('')
  letters_array = no_spaces.chars
  frequency = Hash.new(0)
  letters_array.each { |l| frequency[l] +=1 }
  return frequency
end


# -------------------------------- NAJEE ---------------------------

def letter_count(string)
  frequencies = {}
  string.split.join.downcase.split('').each do |letter|
    # if you encounter a letter that you haven't seen before,
    # this will set it to a new hash instead of ignoring it
    frequencies[letter] ? frequencies[letter] += 1 : frequencies[letter] = 1
  end
  frequencies
ends




letter_count("moon")
letter_count("hippopotamus")
letter_count("hello world")
