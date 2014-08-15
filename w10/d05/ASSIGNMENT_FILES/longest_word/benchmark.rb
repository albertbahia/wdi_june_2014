require 'benchmark'
# def longest_word(word)
#
# end

iteration = 100_000
string = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."


Benchmark.bmbm do |results|
  results.report do
    iteration.times do
      longest = ''
      string.gsub(/\W/,' ').split().each do |each_word|
        longest = each_word if each_word.length > longest.length
      end
      longest
    end
  end
  results.report do
    iteration.times do
    string.scan(/\w+/).max_by{|a| a.length}
    end
  end
  results.report do
    iteration.times do
      word = ''
  counter = 0
  letter_count = 0
  longest_word = ''

  while counter < string.length
    if string[counter] =~ /[a-zA-Z]/
      letter_count += 1
      word += string[counter]
    end

    if string[counter] == ' ' || counter == string.length - 1
      longest_word = word if word.length > longest_word.length
      word = ''
      letter_count = 0
    end

    counter += 1
  end

  longest_word
    end
  end

end
