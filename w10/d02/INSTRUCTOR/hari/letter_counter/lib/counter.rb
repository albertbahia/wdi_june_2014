def letter_count(str)
  counts = {}
  str.downcase.gsub(' ', '').split('').each do |l|
    counts[l] = counts[l] ? counts[l] + 1 : 1
  end
  counts
end
