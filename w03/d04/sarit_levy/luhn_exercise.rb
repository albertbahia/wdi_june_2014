def valid_card?(card_number)
  holder = []
  split_numbers = card_number.to_s.split('').reverse
  split_numbers.each_with_index do |num, index|
    index % 2 == 0 ? holder << num.to_i : holder << num.to_i * 2
  end
  sum = holder.join.split('').map(&:to_i).reduce(:+)  #join converts array into a string and then splits it back in to the array
  return sum % 10 == 0
end
    #or line 5 can be analyzed as even or odd number:
      index.even? ? holder.push(num.to_i) : holder << num.to_i * 2

    #or using a conditional statement for line 5, can do:
      if index % 2 == 0
        holder << num.to_i
      else
        holder << num.to_i * 2
      end
    end
end
