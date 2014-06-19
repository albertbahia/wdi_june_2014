require_relative('../lib/guard.rb')
describe Guard do
	let(:pornstache) { Guard.new('Pornstache', 32, 'male', 10, 'evil') }
	it 'is good or evil' do 
		expect(pornstache.good_or_evil).to eq('evil')
	end
end 