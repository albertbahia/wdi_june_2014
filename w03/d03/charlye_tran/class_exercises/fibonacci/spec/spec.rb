require_relative '../lib/fibonacci.rb'

describe sum_of_even_fibonaccis(limit) do
  it 'should add the even numbers up to 10' do
    expect(sum_of_even_fibonaccis(10)).to eq(10)
  end

  it 'should add numbers <4,000,000,000' do
  end
end
