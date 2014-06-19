require_relative('../lib/prisoner.rb')
describe Prisoner do 
	let(:piper) { Prisoner.new("Piper", 32, "Female", 10, "brown") }
	it 'jumpsuit color' do 
		expect(piper.jumpsuit).to eq('brown')
	end 
end 
