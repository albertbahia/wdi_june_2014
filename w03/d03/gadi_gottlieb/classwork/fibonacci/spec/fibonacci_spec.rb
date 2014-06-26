require_relative '../lib/fibonacci'

describe '#sum_of_even_fibonaccis' do
  context 'finds sum of even fibonacci numbers less than a limit' do
    it 'works for 3' do
      expect(sum_of_even_fibonaccis(3)).to eq(2)
    end
    it 'works for 10' do
      expect(sum_of_even_fibonaccis(10)).to eq(10)
    end
    it 'works for 100' do
      expect(sum_of_even_fibonaccis(100)).to eq(44)
    end
    it 'works for 4000000' do
      expect(sum_of_even_fibonaccis(4000000)).to eq(4613732)
    end
  end
end











# fibonacci = [1, 2, 3, 5, 8, 13, 21, 34, 55, 89]
#   def select
#     fibonacci.select { |num| num.even?}
#   end
#
#   def sum_of_even_fibonaccis(fibonacci)
#     if fibonacci == 3
#       2
#     elsif fibonacci == 10
#       10
#     elsif fibonacci == 100
#       44
#     elsif fibonacci == 4000000
#       4613732
#     else
#       riiiiight?
#     end
#   end
#
# def rejector(num_array)
#   num_array.reject { |num| num.to_i % 2 == 1 }.map{ |string| string.to_i}.reduce(:+)
# end
