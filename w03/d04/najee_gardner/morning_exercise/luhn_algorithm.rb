require 'pry'

def valid_card?(card_num)
  num_array = card_num.to_s.split("")

  switch = false
  index = -1
  luhn_arr = []

  while num_array[index] != nil
    if switch
      num_array[index] = num_array[index].to_i * 2
    end
    luhn_arr += num_array[index].to_s.split("")

    index -= 1
    switch = !switch
  end

  return luhn_arr.reduce(0) {|sum,n| n.to_i + sum} % 10 == 0

  # Mck answer
  # -------------
  # holder = []
  # split_numbers = card_num.to_s.split('').reverse
  # split_numbers.each_with_index do |num, index|
  #   index.even? ? holder.push(num.to_i) : holder << num.to_i * 2
  # end
  # sum = holder.join.split('').map(&:to_i).reduce(:+)
  # return sum % 10 == 0
end

binding.pry
