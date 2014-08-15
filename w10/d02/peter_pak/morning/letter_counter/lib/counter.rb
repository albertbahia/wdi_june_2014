
def letter_count(phrase)
  phrase.downcase.scan(/\w/).inject(Hash.new(0)){|hash, c| hash[c] += 1; hash}
end







# #
# new_hash = {}
# phrase.downcase.scan(/\w/).map { |l| new_hash[l] 1}
