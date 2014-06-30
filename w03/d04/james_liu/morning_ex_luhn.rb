require 'pry'

def valid_card?(*cc_nums)
    holder = []
    num_to_array = cc_nums.to_s.split(' ').reverse
    num_to_array.each_with_index do |num, index|
        index.even? ? holder << num.to_i : holder << num.to_i * 2
    end
    sum = holder.join.split(' ').map(&:to_i).reduce(:+)
    return sum % 10 == 0 
end   

binding.pry


=begin

def valid_card?(*cc_nums)
    holder = []
    num_to_array = cc_nums.join(",").split(",").map(&:to_i)
    reverse_array=num_to_array.reverse.each { |num| puts num }

end

=end
