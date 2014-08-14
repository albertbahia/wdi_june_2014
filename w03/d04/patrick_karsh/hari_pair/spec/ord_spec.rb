require_relative '../ordinalex.rb'

describe '#ordinator' do
	it 'returns 1st for 1' do
		expect(ordinator(1)).to eq('1st')
	end

	it 'returns 2nd for 2' do
		expect(ordinator(2)).to eq('2nd')
	end

	it 'returns 3rd for 3' do
		expect(ordinator(3)).to eq('3rd')
	end

	it 'returns 4th for 4' do
		expect(ordinator(4)).to eq('4th')
	end

	it 'returns 5th for 5' do
		expect(ordinator(5)).to eq('5th')
	end

	it 'returns 6th for 6' do
		expect(ordinator(6)).to eq('6th')
	end

	it 'returns 21st for 21' do
		expect(ordinator(21)).to eq('21st')
	end

	it 'returns 31st for 31' do
		expect(ordinator(31)).to eq('31st')
	end

	it 'returns 41st for 41' do
		expect(ordinator(41)).to eq('41st')
	end
end