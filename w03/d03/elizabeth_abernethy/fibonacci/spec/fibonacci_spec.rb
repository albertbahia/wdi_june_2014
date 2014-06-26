require_relative '../lib/fibonacci'

describe '#sum_of_even_fibonaccis' do
  context 'finds sum of even fibonacci numbers less than a limit' do
    it 'works for 3' do
      expect(sum_of_even_fibonaccis(3)).to eq(2)
    end
    it 'works for 25' do
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
