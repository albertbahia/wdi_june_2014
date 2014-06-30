#
# def valid_card?(card_number)
#   digits_array = []
#   card_number.to_s.scan(/./).map do |num|
#     digits_array << num.to_i
#   end
#
#   even_array = []
#   digits_array.each_slice(2) { |x| even_array.push(x[1]) }
#   odd_array = []
#   digits_array.each_slice(2) { |x| odd_array.push(x[0]) }
#   doubled = even_array.map { |x| x * 2 }
#   doubled =
# end
#require 'pry'

def valid_card?(card_number)
  holder = []
  split_numbers = card_number.to_s.split('').reverse
  split_numbers.each_with_index do |num, index|
    index.even? ? holder << num.to_i : holder << num.to_i * 2
  end
  sum = holder.join.split('').map(&:to_i).reduce(:+)
    #& allows you to skip {|x| x.to_i}, must be put in as a symbol
  return sum % 10 == 0
end

puts valid_card?(123445293480985)
puts valid_card?(9203842058)
puts valid_card?(9824982342385)
puts valid_card?(3892734852)

#binding.pry
