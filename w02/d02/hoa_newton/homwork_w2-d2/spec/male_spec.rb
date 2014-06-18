require_relative('../lib/male.rb')

describe Male do 
	let(:joe) { Female.new('Joe', '48', true)}
	it 'has a name' do
		expect(joe.name).to eq('Joe')
	end

	it 'has a age' do
		expect(joe.age).to eq(48)
	end

	it 'has a job' do
		expect(joe.job).to eq(true)
	end

	it 'has a gender' do
		expect(joe.gender).to eq('M')
	end

	it 'has a money' do
		expect(joe.has_money(200)).to eq(200)
	end

	describe '#make money' do
		expect(joe.spend_money(200)).to eq(200)
	end

	describe '#fix stuff' do
		expect(joe.fix_stuff('washer')).to include('washer')
	end

end


