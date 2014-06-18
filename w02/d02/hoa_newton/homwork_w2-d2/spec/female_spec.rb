require_relative('../lib/female.rb')

describe Female do 
	let(:jane) { Female.new('Jane', '32', false)}
	it 'has a name' do
		expect(jane.name).to eq('Jane')
	end

	it 'has a age' do
		expect(jane.age).to eq(32)
	end

	it 'has a job' do
		expect(jane.job).to eq(false)
	end

	it 'has a gender' do
		expect(jane.gender).to eq('F')
	end

	it 'has a money' do
		expect(jane.has_money(50000)).to eq(50000)
	end

	describe '#spend money' do
		expect(jane.spend_money(200)).to eq(200)
	end

end


