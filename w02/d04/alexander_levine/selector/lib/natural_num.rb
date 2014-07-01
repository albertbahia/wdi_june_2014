require 'Pry'

def natural_num(num1, num2)
  number_array = (num1..num2).to_a
  div_3_or_5 = []
  number_array.each do |num|
    if num % 5 == 0 || num % 3 == 0
      div_3_or_5.push(num)
    end
  end
  return div_3_or_5
  sum = 0
  div_3_or_5.each { |sum| sum += sum}
  sum
end

binding.pry


def sum_3_5(num1, num2)
  number_array = (num1..num2).to_a

  number_array.select { |num| (num % 5 == 0 || num % 3 == 0)? }

end
