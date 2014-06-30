require_relative '/luhn.rb'

describe '#valid_card?' do
  context 'it doubles the digits starting with the [-2] index, the sum of which is a mult of 10' do
    it 'works for 1234567890123456' do
      expect(valid_card?(1234567890123456)).to eq(false)
    # end
    # it 'works for 25' do
    #   expect(sum_of_even_fibonaccis(10)).to eq(10)
    # end
    # it 'works for 100' do
    #   expect(sum_of_even_fibonaccis(100)).to eq(44)
    # end
    # it 'works for 4000000' do
    #   expect(sum_of_even_fibonaccis(4000000)).to eq(4613732)
    end
  end
end
