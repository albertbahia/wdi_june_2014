require_relative '../pairing.rb'

describe '#ordinator' do
	it 'returns "1st" for 1' do
		expect(ordinator(1)).to eq('1st')
	end

	it 'returns "2nd" for 2' do
		expect(ordinator(2)).to eq('2nd')
	end

	it 'returns "3rd" for 3' do
		expect(ordinator(3)).to eq('3rd')
	end

	it 'returns "4th" for 4' do
		expect(ordinator(4)).to eq('4th')
	end

	it 'returns "5th" for 3' do
		expect(ordinator(5)).to eq('5th')
	end

	it 'returns "6th" for 4' do
		expect(ordinator(6)).to eq('6th')
	end

	it 'returns "21st" for 21' do
		expect(ordinator(21)).to eq('21st')
	end

	xit '0 --> 0th'
	xit '10 --> 10th'
	xit '11 --> 11th'
	xit '12 --> 12th'
	xit '13 --> 13th'

end